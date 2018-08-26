class League < ApplicationRecord
  has_many :user_leagues
  has_many :users, through: :user_leagues
  has_many :teams, through: :users
  has_many :comments, through: :users
end
