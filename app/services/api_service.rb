class ApiService
  include HTTParty
  base_uri 'https://test.best2pay.net/webapi/'

	attr_accessor :amount, :reference, :description, :url, :signature, :response, :payment_url

	def initialize(amount,reference = " ",description = " ",  url )
		@amount = amount * 100
		@reference = reference
		@description = description
		@url = "https://app.elementpay.host/reviews/new/#{url}"
		@signature = signature
		new_order
	end

	def signature
		sign(@amount)
	end

	def new_order
		url = "https://test.best2pay.net/webapi/Register?" + order_request_url
		uri = URI.parse(URI.escape(url))
		@response = HTTParty.get(uri).parsed_response
    # response =   	@response["order"]["id"]
    puts @response
	end

	def order_request_url
	
		"sector=2008&amount=#{@amount}&currency=643&description=#{@description}&signature=#{signature}&url=#{@url}&reference=#{@reference}"
	end
  def sign(t)
    string = "2008#{t}643test"
    md5 = Digest::MD5.new
    md5.update(string)
    @signature = Base64.encode64(md5.to_s).chomp
  end

  def set_pay_url(id)
    string = "2008#{id}test"
    md5 = Digest::MD5.new
    md5.update(string)
    signature = Base64.encode64(md5.to_s).chomp
    @payment_url = "https://test.best2pay.net/webapi/Purchase?sector=2008&signature=#{signature}&id=#{id}"
  end
  # ZjYwODBmNTQ3MzU1NDVlYjZlY2MwMDUzMmMzNjJjZTE=&id=556046
  # Для 
  # def set_pay_url

	# def order
	# 	"?sector=2008&signature=#{sign}&id=#{id}"
	# 	https://test.best2pay.net/webapi/&signature=M2VkNGU5MWQ0ZjI0NWVhNjNiNzc3Njg2Y2FmZGI1N2I=&id=553721

end






