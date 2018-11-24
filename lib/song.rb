class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def artist_name
    if @artist
      return self.artist.name
    else
      return nil
    end
  end
end
