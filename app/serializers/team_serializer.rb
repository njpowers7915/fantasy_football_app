class TeamSerializer < ApplicationSerializer
  attributes :name, :user_id
  belongs_to :user
end
