# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def main_view
    @countries = Country.all
    render "main_view"
  end

  def pick_country
    # @states = State.find_by(country: country_params[:code])
    render "main_view"
  end

  private
    def country_params
      params.require(:country).permit(:code)
    end
end
