class SessionsController < ApplicationController
  def newgirl
  end
  def newboy
  end
  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
       sign_in user
       redirect_to root_path
    else
      flash[:error]='User name or password is wrong. Try again, or contact me!'
      redirect_to root_path 
    end
  end
  def destroy
    sign_out
    redirect_to root_path
  end
end
