class League < ApplicationRecord
  has_many :teams
  has_many :comments, through: :teams
end
