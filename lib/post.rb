class Post
  attr_accessor :author, :name
 
  def initialize(name)
    @name = name
  end

  def artist_name
    self.artist.name
  end

end

