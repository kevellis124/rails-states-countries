require 'rails_helper'

RSpec.describe Country, type: :model do
  TEST_NAME = 'Kevinland'
  TEST_CODE = 'KL'
  let(:country) {Country.new(name:TEST_NAME,code:TEST_CODE)}
  it 'should have a name' do
    expect(country.name).to eq TEST_NAME
    expect(country.code).to eq TEST_CODE
  end
end
