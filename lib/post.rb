class Post
  attr_accessor :author, :name
 
  def initialize(name)
    @name = name
  end

  def author_name
    self.artist.name
  end

end

