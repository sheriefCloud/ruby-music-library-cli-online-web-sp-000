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
        song.artist = self unless song.artist
        songs.push song unless songs.include?(song)
    end

    def songs
        @songs
    end

    def genres
        g = []
        self.songs.each {|s| g  <<  s.genre if !g.include?(s.genre) }
        g
    end

    def self.create(artist)
        new_artist = Artist.new(artist)
        new_artist.save
        new_artist
    end
end