class MicropostsController < ApplicationController

  def index
  end

  def create
    @micropost = current_user.microposts.new(micropost_params)
    if @micropost.save
      flash[:success] = "つぶやきました"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_page/home'
    end
  end

  def destroy
    @micropost = current_user.microposts.find_by(id: params[:id])
    @micropost.destroy
    redirect_to root_url
  end

  private
    def micropost_params
      params.require(:micropost).permit(:content)
    end
end
