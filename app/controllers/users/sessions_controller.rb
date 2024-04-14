class Users::SessionsController < Devise::SessionsController
  respond_to :json
  
  def index
    @users = User.all
    render json: @User
  end

  def show
    render json: @User
  end

  private

  def respond_with(_resource, _opts = {})
    render json: {
      message: 'You are logged in.',
      user: current_user
    }, status: :ok
  end

  def respond_to_on_destroy
    log_out_success && return if current_user

    log_out_failure
  end

  def log_out_success
    render json: { message: 'You are logged out.' }, status: :ok
  end

  def log_out_failure
    render json: { message: 'Logged out failled.' }, status: :unauthorized
  end
end