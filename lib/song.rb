class Song
    attr_accessor :name, :artist
    # attr_reader :artist

    @@all = []

    def initialize(name, artist=nil)
        @name = name
        binding.pry
        @artist
        # artist.add_song(self)
        # @artist
        # if artist
        #     @artist = artist.add_song(self)
        # else
        #     @artist
        # end
        
        self.save
    end

    # def artist=(self)
    #     artist.add_song(self)

    # end

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