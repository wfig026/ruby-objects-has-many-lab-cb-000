class Author
  attr_accessor :name, :posts
  @@all_posts = []

  def initialize(name)
    @name = name
    @posts =  []
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@all_posts << post
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    self.add_post(new_post)
  end

  def self.post_count
    return @@all_posts.length
  end
end
