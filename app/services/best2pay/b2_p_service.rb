class B2PService
  include HTTParty
  base_uri 'https://test.best2pay.net/webapi/'

	attr_accessor :amount, :reference, :description, :url, :signature, :response

	def initialize(amount, reference = "", description ="", url = "https://app.elementpay.host/reviews/new")
		@amount = amount * 100
		@reference = reference
		@description = description
		@url = url
		@signature = sign(@amount)

  end
  
  def sign(t)
    string = "2008#{t}643test"
    md5 = Digest::MD5.new
    md5.update(string)
    Base64.encode64(md5.to_s).chomp
  end

end