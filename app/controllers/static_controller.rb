class StaticController < ApplicationController
  def index
<<<<<<< HEAD
    
=======
    @api=ApiBestPay.new

>>>>>>> release/0.5.0
  end

  def home
    @user = User.new
  end

  def account
    @user = User.find(params[:user_id])

  end

  def offer
  end

  def privacy
  end

  def new

  end

end
