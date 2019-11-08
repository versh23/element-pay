# require 'rails_helper'

# RSpec.describe "reviews/index", type: :view do
#   before(:each) do
#     assign(:reviews, [
#       Review.create!(
#         :rate => "Rate",
#         :text => "Text",
#         :order => "Order"
#       ),
#       Review.create!(
#         :rate => "Rate",
#         :text => "Text",
#         :order => "Order"
#       )
#     ])
#   end

#   it "renders a list of reviews" do
#     render
#     assert_select "tr>td", :text => "Rate".to_s, :count => 2
#     assert_select "tr>td", :text => "Text".to_s, :count => 2
#     assert_select "tr>td", :text => "Order".to_s, :count => 2
#   end
# end
