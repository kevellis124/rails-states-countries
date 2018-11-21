# frozen_string_literal: true

require "rails_helper"

RSpec.describe State, type: :model do
  TEST_NAME = "Virginia"
  TEST_CODE = "VA"
  let(:expected_country) { Country.create(name: "TEST COUNTRY", code: "USA") }
  let(:state) { State.create(name: TEST_NAME, code: TEST_CODE, country: expected_country) }
  it "should have a name" do
    expect(state.name).to eq TEST_NAME
    expect(state.code).to eq TEST_CODE
  end

  it "should belong to a country" do
    expect(state.country).to be expected_country
  end

  context "invalid objects" do
    let(:invalid_state) { State.new }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:code) }
    it { should validate_presence_of(:country) }
  end
end
