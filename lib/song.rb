class Song
    attr_accessor :name
    attr_reader :artist, :genre

    @@all = []

    def initialize(name, artist=nil, genre=nil)
        @name = name
        self.artist = artist if artist
        self.genre = genre if genre
        self.save
    end

    def artist=(artist)
        @artist = artist
        artist.add_song(self)        
    end

    def genre=(genre)
        @genre = genre
        genre.add_song(self)
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

    def self.find_by_name(name)
        all.find {|song| song.name == name}
    end

    def self.find_or_create_by_name(name)
        # binding.pry
        find_by_name(name) || create(name)
    end

    def self.create(song)
        song = new(song)
        song.save
        song
    end
end