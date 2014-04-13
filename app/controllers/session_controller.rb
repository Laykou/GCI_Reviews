class SessionController < ApplicationController
  before_action :signed_in_user, except: [:new, :create]

  def index
    @clinic = current_user.clinic
  end

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to account_url
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

  private
  def signed_in_user
    redirect_to sign_in_url, notice: "Please sign in." unless online?
  end
end
