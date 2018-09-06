class LeagueSerializer < ApplicationSerializer
  attributes :id, :name, :admin_id
  #has_many :teams
end
