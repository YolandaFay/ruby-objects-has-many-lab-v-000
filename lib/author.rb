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
  
  def add_post(entry)
    @@post_count += 1 
    @posts << entry #has many 
    entry.author = self  #belongs to
  end
  
  def add_post_by_title(title)
    entry = Post.new(title)
    self.add_post(entry)
    @posts 
  end
  
  def self.post_count()
    @@post_count 
  end

end