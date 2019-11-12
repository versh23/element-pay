require 'rails_helper'

RSpec.describe "invoices/show", type: :view do
  before(:each) do
    @invoice = assign(:invoice, Invoice.create!(
      :uuid => "Uuid",
      :state => "State",
      :info => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Uuid/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(//)
  end
end
