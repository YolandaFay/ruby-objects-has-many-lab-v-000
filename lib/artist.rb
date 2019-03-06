class Artist 
  
  attr_accessor :name 
  attr_reader :songs 
  
  def initialize (name)
    @name = name
    @songs = []
  end
  
  def songs()
    @songs
  end
  
  def add_song(song)
    @songs << song #has many 
    song.artist = self  #belongs to
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
    song 
    #@songs << song
    #song.artist = self 
  end
  
  def self.song_count()
    @songs.length 
    #songs.length 
  end

end