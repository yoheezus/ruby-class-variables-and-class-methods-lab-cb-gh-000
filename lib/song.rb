class Song

    @@number_of_songs = 0
    @@artists_of_songs = []
    @@genres_of_songs = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @@genres_of_songs << genre
        @@artists_of_songs << artist
        @@number_of_songs += 1

        @name = name
        @artist = artist
        @genre = genre
    end
    def self.count
        @@number_of_songs
    end

    def self.genres
        @@genres_of_songs.uniq
    end

    def self.artists

    end

end
