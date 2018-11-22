class Artist

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    self.songs << song
  end

  def add_song_by_name(title)
    new_song = Song.new(title)
    self.add_song(new_song)
  end

  def self.song_count
    Song.all.count
  end

end
