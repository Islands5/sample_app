class StaticPagesController < ApplicationController
  skip_filter :authenticate_user!
  def home
    if user_signed_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.page(params[:page]).per(10) if current_user.feed.present?
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
