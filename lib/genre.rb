class Genre


    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end


    def save
        @@all << self
    end


    def self.all
        @@all
    end


    def songs
        Song.all.select{|songs| songs.genre == self}
    end


    def artists
        songs.map do |songs|
            songs.artist
        end
    end


end