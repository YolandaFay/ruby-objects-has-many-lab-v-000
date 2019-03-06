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
    post = Song.new(title)
    self.add_post(post)
    post  
  end
  
  def self.song_count()
    @@song_count 
  end

end