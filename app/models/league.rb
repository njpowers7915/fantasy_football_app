class League < ApplicationRecord
  has_many :users
  has_many :teams, through: :users
  has_many :comments, through: :users
end
