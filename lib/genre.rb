class Genre
    attr_accessor :name

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
    
    def songs
        @songs
    end

    def add_song(song)
        song.gnere = self unless song.genre
        songs.push song unless songs.include?(song)
    end
    
    def artists
        a = []
        self.songs.each {|s| a  <<  s.artist if !a.include?(s.artist) }
        a
    end

    def self.create(genre)
        new_genre = new(genre)
        new_genre.save
        new_genre
    end
end