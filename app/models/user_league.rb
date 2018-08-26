class UserLeague < ApplicationRecord
  #validates :song_id, uniqueness: {scope: :playlist_id, message: "Song already exists in this playlist"}

  belongs_to :user
  belongs_to :league
end
