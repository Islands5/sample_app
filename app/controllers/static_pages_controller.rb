class StaticPagesController < ApplicationController
  skip_filter :authenticate_user!
  def home
    @micropost = current_user.microposts.build if user_signed_in?
    @feed_items = current_user.feed.page(params[:page]).per(10)
  end

  def help
  end

  def about
  end

  def contact
  end
end
