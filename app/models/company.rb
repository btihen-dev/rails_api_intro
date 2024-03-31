class Company < ApplicationRecord
  normalizes :name,  with: ->(value) { value.strip }

  validates :name, presence: true
  validates :name, uniqueness: true
end
