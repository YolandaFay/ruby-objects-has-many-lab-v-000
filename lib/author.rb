class Author  
  
  attr_accessor :title  
  attr_reader :posts
  
  @@post_count = 0 
  
  def initialize (title)
    @title = title
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
  
  def add_post_by_title(title)
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