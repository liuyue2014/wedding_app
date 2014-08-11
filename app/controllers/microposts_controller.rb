class MicropostsController  < ApplicationController
  before_action :signed_in_user, only: [:create, :index, :destroy]
  before_action :correct_user, only: :destory

  def index
  end

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      #flash[:successs] = "留言成功！"
      #redirect_to wishes_path
    else
      @feed_item = []
      render 'pages/home'
    end
  end

  def destroy
    micropost.find(params[:id]).destory
    flash[:success] = "删除成功"
    redirect_to wishes_path
  end
  def micropost_params
    params.require(:micropost).permit(:content)
  end

  def correct_user
    @micropost = current_usr.microposts.find_by(id:params[:id])
    redirect_to wishes_path if @micropost.nil?
  end

end
