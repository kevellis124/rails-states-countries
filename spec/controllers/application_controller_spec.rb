# frozen_string_literal: true

require "rails_helper"

describe ApplicationController, type: :controller do
  let(:app_controller) { ApplicationController.new }
  it "should render the countries viewer page" do
    get :main_view
    expect(response).to render_template("main_view")
  end

  it "should show the states for a country" do
    get :pick_country, params: { country: "USA" }
    expect(response).to render_template("main_view")
  end
end
