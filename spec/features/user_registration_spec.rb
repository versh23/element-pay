require "rails_helper"

RSpec.feature "Widget management", :type => :feature do
  scenario "User creates a new widget" do
    visit "/tips/new/1"
    fill_in "tip_amount", :with => "200"

    click_button "Продолжить"

    expect(page).to have_text("*")
  end
end