class CommentSerializer < ApplicationSerializer
  attributes :id, :content, :team, :league
  belongs_to :team
  belongs_to :league
end
