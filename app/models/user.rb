# frozen_string_literal: true

# Users model
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :company
  accepts_nested_attributes_for :company, reject_if: ->(attributes) { attributes["name"].blank? }, allow_destroy: true
end
