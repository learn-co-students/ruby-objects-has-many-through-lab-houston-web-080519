class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs 
    Song.all.select do | song | 
      song.artist == self
    end
  end

  def genres 
    songs.collect do | song | 
      song.genre
    end
  end

end


















# class Artist

#     @@all = []

#     def initialize(name)
#         @all << name
#     end

#     def self.all
#         @@all
#     end

#     #incomplete
#     def new_song(name, genre)
#         song = Song.new()
#         song.artist = self
#     end

#        #incomplete
#     def songs
#         Song.all.select do |song| 
#             song.artist == self
#         end
#     end

# end

# class Artist
#     attr_accessor :name
  
#     def initialize(name)
#       @songs = []
#       @name = name
#     end
  
#     def songs
#       @songs
#     end
  
#     def add_song(song)
#       @songs << song
#       song.artist = self
#     end
  
#     def genres                        #=> This is how the other two
#       self.songs.collect do |song|    #=> classes talk to each other
#         song.genre
#       end
#     end
#   end