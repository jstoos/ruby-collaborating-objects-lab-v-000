require "pry"

class Song

  attr_accessor :artist, :name

  @@all_songs = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
binding.pry
    artist_name=(filename.split(" - ")[0])
    song_name=(filename.split(" - ")[1])
    song = self.create(song_name, artist_name)
    # song.artist = artist_name
    # song.name = song_name
    Artist.find_or_create_by_name(artist_name)
    song
  end

  def self.create(song_name, artist_name)
    new_song = self.new(song_name)
    new_song.artist = artist_name
    @@all_songs << new_song
    new_song
  end

  def song_name=(song_name)
    song.name = song_name
  end

  def artist_name=(artist_name)
    song.artist = artist_name
  end

end
