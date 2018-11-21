# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "application#main_view", as: :main_view
  post "/pick-country", to: "application#pick_country", as: :pick_country

  root to: "application#main_view"
end
