class PagesController < ApplicationController 
  def show
  end
  def home
  end

  def picture
  end

  def invite
  end

  def wishes
     @microposts = Micropost.paginate(page: params[:page])
  end

  def feedback
  end

  def help
  end
  def update
    user = current_user
    if user
       user.person_num = params[:user][:person_num]
       user.save
    else
      flash.now[:error]='please choose one!'
      redirect_to invite_path
    end
  end

  def newmic
  end
  def createmic
  end
  def showmic
  end
end
