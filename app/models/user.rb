class User < ApplicationRecord
  enum role: [:user, :waiter, :restaurant, :manager, :admin]
  has_many :tips
  has_one :wallet
  after_initialize :set_default_avatar 

  after_create :set_defaults
  # before_save :set_qr_code
  # def check_wallet

  # wallet=self.wallet
  # wallet.amount = self.wallet.amount + amount
  # self.wallet.save
  # before_create :set_default_initialize
  # # after_initialize :set_default_avatar
  # after_save :set_qr_code

  # def set_defaults
  #   # set_qr_code
  #   # set_default_avatar
  #   # set_wallet
  #   # self.life_period ||= 1800
  #   # set_default_avatar
  # end
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
    self.save
  end

  def set_qr_code
    self.qr_code = "#{self.id}.png"
  end
  
  def set_wallet
    self.wallet ||= Wallet.create(user_id: self.id, money: 0)
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
