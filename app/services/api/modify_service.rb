
require_relative "b2p/base_service.rb"

class ModifyService < BaseService
  attr_accessor :params, :uuid, :sector, :currency_id

  def initialize(params)
    @params = params
    @uuid = SecureRandom.hex 6
    @sector = 2009
  end

  def sign
    super
  end
end