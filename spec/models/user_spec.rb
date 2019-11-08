require 'rails_helper'

RSpec.describe 'User', type: :model do

  before(:all) do
    DatabaseCleaner.clean
    @user = User.create(email: 'email@example.com',password: 'testtest')
  end

  it "works" do

    expect(@user.email).to eq  'email@example.com'
  end

  it "have png" do
   @user.set_qr_code
    @user.save
    # @user.save!
    expect(@user.qr_code).to eq  '.png'
  end

    #   pending "add some examples to (or delete) #{__FILE__}"
end
