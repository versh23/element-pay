# require 'rails_helper'

# RSpec.describe "tips/new", type: :view do
#   before(:each) do
#     assign(:tip, Tip.new(
#       :amount => "MyString",
#       :payment_url => "MyString",
#       :user => nil
#     ))
#   end

#   it "renders new tip form" do
#     render

#     assert_select "form[action=?][method=?]", tips_path, "post" do

#       assert_select "input[name=?]", "tip[amount]"

#       assert_select "input[name=?]", "tip[payment_url]"

#       assert_select "input[name=?]", "tip[user_id]"
#     end
#   end
# end
