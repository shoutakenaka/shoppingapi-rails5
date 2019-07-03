class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: { categories: @categories.map { |o| { id: o.id, name: o.name } } }
  end
end
