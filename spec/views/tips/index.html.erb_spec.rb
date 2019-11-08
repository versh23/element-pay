# require 'rails_helper'

# RSpec.describe "tips/index", type: :view do
#   before(:each) do
#     assign(:tips, [
#       Tip.create!(
#         :amount => "Amount",
#         :payment_url => "Payment Url",
#         :user => nil
#       ),
#       Tip.create!(
#         :amount => "Amount",
#         :payment_url => "Payment Url",
#         :user => nil
#       )
#     ])
#   end

#   it "renders a list of tips" do
#     render
#     assert_select "tr>td", :text => "Amount".to_s, :count => 2
#     assert_select "tr>td", :text => "Payment Url".to_s, :count => 2
#     assert_select "tr>td", :text => nil.to_s, :count => 2
#   end
# end
