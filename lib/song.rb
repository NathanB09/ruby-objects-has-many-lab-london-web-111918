require "pry"

class Song

  @@all = []

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def artist_name
    self.artist == nil ? nil : self.artist.name
  end

end


# Pry.start
