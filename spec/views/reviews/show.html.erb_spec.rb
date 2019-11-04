require 'rails_helper'

RSpec.describe "reviews/show", type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :rate => "Rate",
      :text => "Text",
      :order => "Order"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Rate/)
    expect(rendered).to match(/Text/)
    expect(rendered).to match(/Order/)
  end
end
