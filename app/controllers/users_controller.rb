class UsersController < ApplicationController
  def new
    puts "Calling the new user method"
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id # sign in the user
      redirect_to new_session_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
