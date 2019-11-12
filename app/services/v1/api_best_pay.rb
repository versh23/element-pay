require_relative 'client_best_pay'
require_relative 'parser_best_pay'

class ApiBestPay
  attr_accessor :client, :parser

  def initialize
    @client = ClientBestPay.new
    @parser =ParserBestPay.new
  end
end


restaurant title state description avatar_url

waiter

module BestPay
  def self.api
    puts 42
    API.new
  end

  class API

    def initialize(params={})
      @url = params[:url]
    end
  end

end