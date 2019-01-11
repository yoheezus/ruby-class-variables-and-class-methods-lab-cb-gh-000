class Song

    @@number_of_songs = 0
    @@artists_of_songs = []
    @@genres_of_songs = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
    end

end
