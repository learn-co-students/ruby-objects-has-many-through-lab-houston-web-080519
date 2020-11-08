class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    Song.all.select { |song| song.artist == self}
  end
  
  def new_song(name, artist=self, genre)
    Song.new(name, artist, genre)
    # Song.name.artist = self
  end
  
  def genres
    Song.all.map(&:genre)
  end
  
end