class Person < ApplicationRecord
  normalizes :first_name, :nick_name, :last_name, :given_name,
             with: ->(value) { value.strip }

  validates :first_name,
            uniqueness: { scope: :last_name,
                          message: "first- and last-name already exists" }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender, inclusion: { in: %w[male female non-binary] }
end
