class Wallet < ApplicationRecord
  belongs_to :user
  def pay(amount=0.0)
  end

end
