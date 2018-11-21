# frozen_string_literal: true

class State < ApplicationRecord
  belongs_to :country
  validates_presence_of(:name, :code, :country)
end
