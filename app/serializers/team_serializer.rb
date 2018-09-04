class TeamSerializer < ApplicationSerializer
  attributes :id, :name, :user
  belongs_to :user
end
