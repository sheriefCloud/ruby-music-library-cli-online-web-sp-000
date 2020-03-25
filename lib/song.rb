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
        @@all = []
    end

    def save
        @@all << self
    end
    def self.find_by_name(song)
        r=@@all.each {|s|s.name == song}
        # r_song = nil
        # @@all.each do |s| 
            
        #     binding.pry
        #     if s.name == song
        #         r_song = s
        #     end

        # end
        # r_song
    end

    def self.create(song)
        new_song = Song.new(song)
        new_song.save
        new_song
    end
end