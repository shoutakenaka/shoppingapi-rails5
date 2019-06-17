class OrdersController < ApplicationController
  before_action :ensure_user_is_admin, only: %i(update)
  before_action :ensure_user_is_customer, only: %i(create)

  def index
    load_orders
  end

  def show
    load_order
  end

  def create
    ActiveRecord::Base.transaction do
      shipping_params = params[:shipping] || {}
      billing_params = params[:billing] || {}
      @order = current_uesr.orders.build(
        status: 1,
        shipping_first_name: shipping_params[:first_name],
        shipping_last_name: shipping_params[:last_name],
        shipping_phone: shipping_params[:phone],
        shipping_postal_code: shipping_params[:postal_code],
        shipping_region: shipping_params[:region],
        shipping_locality: shipping_params[:locality],
        shipping_street_address: shipping_params[:street_address],
        billing_first_name: billing_params[:first_name],
        billing_last_name: billing_params[:last_name],
        billing_phone: billing_params[:phone],
        billing_postal_code: billing_params[:postal_code],
        billing_region: billing_params[:region],
        billing_locality: billing_params[:locality],
        billing_street_address: billing_params[:street_address])
  
      current_user.cart.cart_lines.each do |line|
        @order.order_lines.build(
          item: line.item,
          name: line.item.name,
          unit_price: line.item.unit_price,
          quantity: line.quantity,
          subtotal: item.unit_price * line.quantity)
      end
      
      @order.total = order.order_lines.map { |o| o.subtotal }.sum
      @order.save!
    end

    render action: :show
  end
  
  def update
    load_order
    case params[:status]
    when 'shipped' then @order.status = 2
    when 'cancelled' then @order.status = 3
    end
    @order.save!
    render action: :show
  end

  private

  def load_order
    if current_user.admin?
      @order = Order.includes(:user).find(params[:id])
    elsif
      @order = current_user.orders.includes(:user).find(params[:id])
    end
  end

  def load_orders
    if current_user.admin?
      @orders = Order.all.includes(:user)
    elsif
      @orders = current_user.orders.includes(:user)
    end
  end
end
