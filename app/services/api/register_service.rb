
require_relative "b2p/base_service.rb"

class RegisterService < BaseService
  attr_accessor :params, :uuid

  def initialize(params)
    @params = params
    @uuid = SecureRandom.hex 6
  end

  def sign
    super
  end
end