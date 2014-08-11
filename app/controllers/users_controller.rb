class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to our Wedding invitation!"
    else
      flash[:error]="User name or password is wrong!"
      redirect_to signin_path
      #render 'new'
    end
  end
  private

    def user_params
      params.require(:user).permit(:name,:whose,:password,:password_confirmation)
    end
end
