class Song

  @@count = 0 
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @@artists << artist
    @artist = artist
    @genre = genre
    @@genres << genre
    @@count += 1

  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
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
    gh = {}
    @@genres.each do |gen|
      gh[gen] = @@genres.count(gen)
    end
    gh
  end

  def self.artist_count
     ah = {}
    @@artists.each do |art|
      ah[art] = @@artists.count(art)
    end
    ah
  end

end