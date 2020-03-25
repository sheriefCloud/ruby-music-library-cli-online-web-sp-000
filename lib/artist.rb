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
        all.clear
    end

    def save
        self.class.all << self
    end

    def add_song(song)
        song.artist = self unless song.artist
        songs.push song unless songs.include?(song)
    end

    def songs
        @songs
    end

    def genres
        songs.map(&:genre).uniq
    end

    def self.create(artist)
        new_artist = new(artist)
        new_artist.save
        new_artist
    end
end