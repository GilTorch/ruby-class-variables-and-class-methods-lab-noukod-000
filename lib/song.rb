class Song

  @@count = 0
  @@artists=[]
  @@genres=[]

  attr_accessor :name,:artist,:genre

  def initialize(name,artist,genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    @@count+=1
    @@artists << artist
    @@genres << genre
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genres_hash = Hash.new(0)
    @@genres.each do |genre|
      genres_hash[genre]+=1
    end
    genres_hash
  end

  def self.count
    @@count
  end
end
