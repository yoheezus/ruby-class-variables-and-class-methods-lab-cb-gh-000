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
        @@artists_of_songs.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres_of_songs.collect do |genre|
            genre_count[genre] = @@genres_of_songs.count(genre)
        end
    end
    genre_count
end
