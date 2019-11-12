require 'rails_helper'

RSpec.describe "invoices/index", type: :view do
  before(:each) do
    assign(:invoices, [
      Invoice.create!(
        :uuid => "Uuid",
        :state => "State",
        :info => ""
      ),
      Invoice.create!(
        :uuid => "Uuid",
        :state => "State",
        :info => ""
      )
    ])
  end

  it "renders a list of invoices" do
    render
    assert_select "tr>td", :text => "Uuid".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
