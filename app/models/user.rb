class User < ApplicationRecord
  has_many :teams
  has_many :comments, through: :teams
  has_many :leagues, through: :teams
end
