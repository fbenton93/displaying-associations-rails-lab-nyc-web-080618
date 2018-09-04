class Artist < ActiveRecord::Base
  has_many :songs

  def song_count
    arr = Song.all.select do |song|
      song.artist == self
    end
    arr.length
  end
end
