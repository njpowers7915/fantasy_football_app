class PositionSerializer < ApplicationSerializer
  attributes :id, :name
  has_many :players
end
