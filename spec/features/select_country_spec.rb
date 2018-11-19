require "rails_helper"

describe "visit root", :type => feature do
  before :each do
    Country.create(name: 'Canada', code: 'CAN')
  end
  it 'lets you choose a country from the drop down' do
    visit root_path
    puts page.html
    select 'Canada', from: 'country'
  end
end