class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name, artist=nil)
        @name = name
        # if artist
        #     Artist.all.each {|a| a.name = artist, artist.songs << }
        # end
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

    def self.create(song)
        new_song = Song.new(song)
        new_song.save
        new_song
    end
end