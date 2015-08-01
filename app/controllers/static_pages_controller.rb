class StaticPagesController < ApplicationController
  skip_filter :authenticate_user!
  def home
  end

  def help
  end

  def about
  end

  def contact
  end
end
