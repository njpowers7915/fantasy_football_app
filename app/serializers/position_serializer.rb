class PositionSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :players
end
