class Post
  attr_accessor :author, :title
 
  @@all = []
 
  def initialize(title)
    @title = title
  end

  def author_name
    self.author.name
  end

end

