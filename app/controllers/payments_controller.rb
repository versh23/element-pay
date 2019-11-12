class PaymentsController < ApplicationController
  def new
    @tip = Tip.new
    @tip.user_id =  params[:user_id]
    @waiter = Waiter.new
  end

  def create
  end

  def result
  end
end
