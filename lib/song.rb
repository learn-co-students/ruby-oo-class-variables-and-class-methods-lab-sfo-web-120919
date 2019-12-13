class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
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
    genres_hash = {}
    @@genres.each do |element| 
      if genres_hash[element]
        genres_hash[element] += 1
      else
        genres_hash[element] = 1
      end
    end
    return genres_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |element| 
      if artist_hash[element]
        artist_hash[element] += 1
      else
        artist_hash[element] = 1
      end
    end
    return artist_hash
  end

end