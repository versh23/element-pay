class StaticController < ApplicationController
  def index
    
  end

  def home
  end

  def account
    @user = User.find(params[:user_id])

  end

  def offer
  end

  def privacy
  end
end
