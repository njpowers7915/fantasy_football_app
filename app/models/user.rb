class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  has_many :teams
  has_many :leagues, through: :teams
  has_many :comments, through: :teams

end
