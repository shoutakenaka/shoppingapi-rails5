class CartsController < ApplicationController
  before_action :ensure_user_is_customer

  def show
    load_cart
  end

  def update
    ActiveRecord::Base.transaction do
      load_cart
      @cart.cart_lines.destroy_all
      items_params = params[:items] || []
      items_params.each do |o|
        item = Item.find(o[:id])
        @cart.cart_lines.create!(item: item, quantity: o[:quantity] || 1)
      end
      @cart.total = @cart.cart_lines.map { |o| o.quantity * o.item.unit_price }.sum
      @cart.save!
    end
    render action: :show
  end

  private

  def load_cart
    @cart = current_user.cart || current_user.create_cart(total: 0)
  end
end
