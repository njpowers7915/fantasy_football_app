class TeamsPlayer < ApplicationRecord
  #validates :song_id, uniqueness: {scope: :playlist_id, message: "Song already exists in this playlist"}

  belongs_to :team
  belongs_to :player
end
