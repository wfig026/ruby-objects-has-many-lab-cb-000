class Post
  attr_accessor :title, :author
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    return @@all
  end

  def author_name
    if @author
      return self.author.name
    else
      return nil
    end
  end
end
