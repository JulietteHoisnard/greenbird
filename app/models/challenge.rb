class Challenge < ApplicationRecord
  has_many :challenge_users
  has_many :users, through: :challenge_users

  validates :title, :call_to_action, :description, :category, :impact_co, presence: true
  validates :impact_level, presence: true, inclusion: { in: %w(low medium high), message: "Please assign an impact of low, medium or high." }
end
