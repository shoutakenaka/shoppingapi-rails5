class CustomersController < ApplicationController
  skip_before_action :authorize

  def create
    Customer.create!(
      username: params[:username],
      password: params[:password],
      password_confirmation: params[:password],
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
      postal_code: params[:postal_code],
      region: params[:region],
      locality: params[:locality],
      street_address: params[:street_address])
    render json: {}
  end
end
