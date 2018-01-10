require "pry"

class Song

  attr_accessor :artist, :name

  @@all_songs = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
# binding.pry
    artist=(filename.split(" - ")[0])
    name=(filename.split(" - ")[1])
    song = self.create(name, artist)
    Artist.find_or_create_by_name(artist)
    song
  end

  def self.create(song_name, artist_name)
    new_song = self.new(song_name)
    new_song.artist = artist_name
    @@all_songs << new_song
    new_song
  end

  def name=(song_name)
    song.name = song_name
  end

  def artist=(artist_name)
    artist = Artist.new(artist_name)
    self.artist = artist_name
  end

end
