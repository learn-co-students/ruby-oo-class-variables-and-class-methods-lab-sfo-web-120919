class Song 
    attr_accessor :name, :artist, :genre
    
    @@count = 0 # count of songs created
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
       @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
            result = Hash.new(0)
            @@genres.each { |genre| result[genre] += 1 }
            return result
    end

    def self.artist_count
        result = Hash.new(0)
        @@artists.each {|artist| result[artist] += 1 }
        return result
    end 
end