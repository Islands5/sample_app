class UsersController < ApplicationController
  before_action :signed_in_user, only: [:show]
  before_action :correct_user, only: [:show]

  def show
    @user = User.where(:id => params[:id]).first
    @microposts = @user.microposts.page(params[:page]).per(10)
  end

  def index
    @users = User.all.page(params[:page])
  end

  private
    def signed_in_user
      redirect_to new_user_session_path unless user_signed_in?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user == @user
    end
end
