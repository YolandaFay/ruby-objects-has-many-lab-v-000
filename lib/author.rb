class Author  
  
  attr_accessor :name 
  attr_reader :posts
  
  @@post_count = 0 
  
  def initialize (name)
    @name = name
    @posts = []
  end
  
  def posts()
    @posts 
  end
  
  def add_post(post)
    @@song_count += 1 
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
    @@song_count 
  end

end