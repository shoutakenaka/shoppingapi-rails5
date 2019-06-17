require 'securerandom'

class SessionsController < ApplicationController
  skip_before_action :authorize

  def create
    load_user
    if !@user.authenticate(params[:password])
      return render json: { code: 'not_authenticated' }, status: 401
    end
    token = SecureRandom.base64(64)
    @user.sessions.create!(token: token)
    render json: { token: token, username: @user.username }
  end
  
  private
  
  def load_user
    if params[:role] == 'admin'
      @user = Admin.find_by!(username: params[:username])
    else
      logger.warn("Unknown role specified (role='#{params[:role]}').") if params[:role].present?
      @user = Customer.find_by!(username: params[:username])
    end
    @user
  end
end
