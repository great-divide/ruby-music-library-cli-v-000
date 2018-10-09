class Song
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name
    if artist != nil
      self.artist=(artist)
    end
    if genre != nil
      self.genre=(genre)
    end
  end
  
  def artist=(name)
    @artist = name
    @artist.add_song(self)
  end
  
  def genre=(genre)
    @genre = genre
    @genre.add_song(self)
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    song = Song.new(name)
    song.save
    song
  end
  
  def self.find_by_name(name)
    array = @@all.select { |n| n.name == name }
    # return array  n.name ?
  end
end