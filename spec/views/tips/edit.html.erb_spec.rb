# require 'rails_helper'

# RSpec.describe "tips/edit", type: :view do
#   before(:each) do
#     @tip = assign(:tip, Tip.create!(
#       :amount => "MyString",
#       :payment_url => "MyString",
#       :user => nil
#     ))
#   end

#   it "renders the edit tip form" do
#     render

#     assert_select "form[action=?][method=?]", tip_path(@tip), "post" do

#       assert_select "input[name=?]", "tip[amount]"

#       assert_select "input[name=?]", "tip[payment_url]"

#       assert_select "input[name=?]", "tip[user_id]"
#     end
#   end
# end
