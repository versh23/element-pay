class Best2payService


	attr_accessor :amount, :reference, :description, :url, :signature, :response

	def initialize(amount, reference = "", description ="", url = "https://app.elementpay.host/reviews/new")
		@amount = amount * 100
		@reference = reference
		@description = description
		@url = url
		@signature = sign(@amount)
		# new_order
	end

def sign(t)
  string = "2008#{t}643test"
  md5 = Digest::MD5.new
  md5.update(string)
  Base64.encode64(md5.to_s).chomp
end

def send_order
  # u = order_request_url(@amount) 
  @response = HTTParty.get("https://test.best2pay.net/webapi/Register?sector=2008&amount=#{@amount}&currency=643&signature=#{@signature}")
  # OrdersService.parse
end

def order_request_url(i)
  "sector=2008&amount=#{i}&currency=643&signature=#{@signature}"

  # "sector=2008&amount=#{@amount}&currency=643&description=#{@description}&signature=#{signature}&url=#{@url}"
end

  def self.pay(user,amount)
    u = User.find(user.id)

    u.wallet.money =     u.wallet.money.to_i + amount.to_i

    u.wallet.save!
  end
end