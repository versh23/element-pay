class StaticController < ApplicationController
  def index

  end

  def home
    @user = User.new
  end

  def account
    if params[:user_id] != nil
    @user = User.find(params[:user_id])
  else
    current_user
  end

  end

  def offer
  end

  def privacy
  end

  def new

  end

end
