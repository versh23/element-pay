class TipsController < ApplicationController
  before_action :set_tip, only: [:show, :edit, :update, :destroy]

  # GET /tips
  # GET /tips.json
  def index
    @tips = Tip.all
  end

  # GET /tips/1
  # GET /tips/1.json
  def show
  end

  # GET /tips/new
  def new
    @tip = Tip.new
    @tip.user_id =  params[:user_id]



  end

  # GET /tips/1/edit
  def edit
  end

  # POST /tips
  # POST /tips.json
  def create
    @tip = Tip.new(tip_params)

    respond_to do |format|
      if @tip.save
        make_payment(@tip)
        response = send_order_to_api(@tip)


        format.html { redirect_to response, notice: 'Tip was successfully created.' }
        # format.json { render :show, status: :created, location: @tip }
      else
        format.html { redirect_to root_path }
      end
    end
  end

  def send_order_to_api(tip)
    tips = tip.amount.to_i
    ref = "#{tip.id}TEST_PAY"
    user =  User.find(tip.user_id )

    desc = "Чаевые для #{user.email}"
    a=ApiService.new(tips,ref,"#{desc}",tip.id)

    page =  a.response["order"]["id"]
    a.set_pay_url(page)

   a.payment_url
  end

  def make_payment(t)
    u = User.find(t.user_id)
    u.wallet.money = t.amount
    u.wallet.save!
    # Best2payService.pay(u, @tip.amount)
# 
  end

  # PATCH/PUT /tips/1
  # PATCH/PUT /tips/1.json
  def update
    respond_to do |format|
      if @tip.update(tip_params)
        format.html { redirect_to @tip, notice: 'Tip was successfully updated.' }
        format.json { render :show, status: :ok, location: @tip }
      else
        format.html { render :edit }
        format.json { render json: @tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tips/1
  # DELETE /tips/1.json
  def destroy
    @tip.destroy
    respond_to do |format|
      format.html { redirect_to tips_url, notice: 'Tip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tip
      @tip = Tip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tip_params
      params.require(:tip).permit(:amount, :payment_url, :user_id)
    end
end
