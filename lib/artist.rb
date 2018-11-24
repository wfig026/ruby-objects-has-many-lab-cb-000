class Artist
  attr_accessor :name, :songs
  @@all_songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@all_songs << song
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    self.add_song(new_song)
  end

  def self.song_count
    return @@all_songs.length
  end
end
