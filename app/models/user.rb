class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  has_many :user_leagues
  has_many :leagues, through: :user_leagues
  has_many :comments, through: :teams
  has_many :teams, through: :leagues
end
