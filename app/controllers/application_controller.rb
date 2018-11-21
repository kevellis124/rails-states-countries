# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :get_countries

  def main_view
    render "main_view"
  end

  def pick_country
    @states = get_states(params[:country])
    render "main_view"
  end

  private
    def get_countries
      @countries = Country.all
    end

    def get_states(country_code)
      State.where(country: Country.find_by(code: country_code))
    end
end
