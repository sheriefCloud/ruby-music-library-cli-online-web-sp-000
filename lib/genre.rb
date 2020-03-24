class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
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

    def self.create(genre)
        new_genre = Genre.new(genre)
        new_genre.save
        new_genre
    end
end