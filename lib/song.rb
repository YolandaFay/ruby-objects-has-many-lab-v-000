class Song
  attr_accessor :artist, :name
 
  def initialize(name, artist=nil)
    @name = name
  end

  def artist_name
    self.artist.name
  end

end

