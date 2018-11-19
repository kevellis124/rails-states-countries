# frozen_string_literal: true

class ApplicationController < ActionController::Base

  def main_view
    @countries = Country.all
    render 'main_view'
  end

end
