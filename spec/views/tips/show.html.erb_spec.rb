require 'rails_helper'

RSpec.describe "tips/show", type: :view do
  before(:each) do
    @tip = assign(:tip, Tip.create!(
      :amount => "Amount",
      :payment_url => "Payment Url",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Amount/)
    expect(rendered).to match(/Payment Url/)
    expect(rendered).to match(//)
  end
end
