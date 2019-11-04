class User < ApplicationRecord
  enum role: [:user, :waiter, :admin]
  has_many :tips
  has_one :wallet
  # after_initialize :set_def 

  after_create :set_defaults

  # def set_def 

  #   set_wallet
  #   # self.life_period ||= 1800
  #   # set_default_avatar
  # end

  def set_defaults
    set_qr_code
    set_default_avatar
    set_wallet
  end

  def set_default_avatar
    self.avatar = "https://dummyimage.com/300x300/4d4d4d/fff&text=avatar"
  end

  def set_qr_code
    self.qr_code = "#{self.id}.png"
    self.save
  end
  
  def set_wallet
    self.wallet = Wallet.create(user_id: self.id, money: 0)
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
