class ApplicationController < ActionController::API
  before_action :authorize

  private

  def authorize
    token = request.headers[:AUTHORIZATION]
    current_session = Session.find_by(token: token)
    @current_user = current_session&.user
    if @current_user.blank?
      return render json: { code: 'invalid_token' }, status: 403
    end
  end

  def current_user
    @current_user
  end

  def privileged
    current_user&.admin?
  end

  def privileged!
    return render json: { code: 'access_denied' }, stauts: 403
  end
end
