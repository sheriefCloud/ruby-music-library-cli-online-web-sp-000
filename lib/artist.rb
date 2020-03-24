class Artist
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
        @@all = []
    end

    def save
        @@all << self
    end

    def add_song(song)

        song = Song.new(song, self)
        @songs << self

        # Songs.all.each do |song|
        #     binding.pry
        #     if song.name == song 
                
        #         if !song.artist 
        #             song.artist = self
        #         end
        #     end
        # end

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