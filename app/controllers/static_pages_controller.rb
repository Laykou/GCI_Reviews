class StaticPagesController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def sign_up
    @user = User.new
  end

  def sign_up_create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save

        format.html {
          sign_in @user
          flash[:success] = 'Welcome to the Global Clinic Index!'
          redirect_to account_url
        }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'sign_up' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
  end
end
