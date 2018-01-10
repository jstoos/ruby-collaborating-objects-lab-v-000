require "pry"

class Song

  attr_accessor :artist, :name

  @@all_songs = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)

    artist_name=(filename.split(" - ")[0])
    song_name = filename.split(" - ")[1]
    song = self.create(song_name)
    # song.artist = artist_name
    # song.name = song_name
    Artist.find_or_create_by_name(song.artist)
    Artist.add_song(song_name)
    song
  end

  def self.create(song_name)
    new_song = self.new(song_name)
    @@all_songs << new_song
    new_song
  end

  def artist_name=(artist_name)
    song.artist = artist_name
  end

end
