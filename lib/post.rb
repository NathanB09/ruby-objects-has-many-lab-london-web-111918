class Post

  @@all = []

  attr_accessor :author, :title

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def author_name
    self.author == nil ? nil : self.author.name
  end

end
