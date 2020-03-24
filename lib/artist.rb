class Artist
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def self.all
        @@all
    end

    def self.destroy_all
        @@all = []
    end

    def save
        @@all << self
    end

    def add_song(song)
        self.songs << song
        # binding.pry
    end

    def songs
        @songs
    end

    def self.create(artist)
        new_artist = Artist.new(artist)
        new_artist.save
        new_artist
    end
end