class TeamPlayerSerializer < ApplicationSerializer
  attributes :id, :team, :player
  belongs_to :team
  belongs_to :player
end
