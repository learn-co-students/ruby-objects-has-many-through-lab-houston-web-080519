class Genre
    attr_accessor :name
    @@all = []
    def initialize(genre)
        @name = genre
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        songs.map do |song|
            song.artist
        end
    end

end