class Song
    attr_accessor :name, :artist, :all

    @@all = []

    def initialize(name, artist=nil)
        @name = name
        @artist = artist
        @@all << self
    end

    def artist=(artist)
        @artist = artist
        artist.songs << self
    end

    def artist_name
        if @artist
            @artist.name
        else
            @artist
        end
    end

    def self.all
        @@all
    end
end