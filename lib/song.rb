class Song

    attr_accessor :name, :artist, :genre

        @@count = 0
        @@genres = []
        @@artists = []

    def initialize(name,artist,genre)
        @genre = genre
        @name = name
        @artist = artist
        @@count += 1 
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq

    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        new_hash = {}
        @@genres.each do |genre|
            if new_hash[genre]
                new_hash[genre] += 1
            else
             new_hash[genre] = 1
            end
            
        end
        return new_hash
    end

    def self.artist_count
        new_hash = {}
        @@artists.each do |artist|
            if new_hash[artist]
                new_hash[artist] += 1
            else
             new_hash[artist] = 1
            end
            
        end
        return new_hash
    end
        # iterate through all the genre elements in the @@genres array
          
           # check if genre is a key in new-hash

           # if its a key, increment the value by 1

           # if its not a key, add it as a key with a value of 1

           # return new-hash
              

    









end

