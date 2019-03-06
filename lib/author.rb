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
    @@post_count += 1 
    @posts << post #has many 
    post.artist = self  #belongs to
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