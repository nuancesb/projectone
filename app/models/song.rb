class Song < ActiveRecord::Base
  
  acts_as_commentable
  mount_uploader :song_file, SongFileUploader
  belongs_to :user


end
