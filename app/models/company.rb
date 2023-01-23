# frozen_string_literal: true

# Company model
class Company < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :lists, dependent: :destroy
end
