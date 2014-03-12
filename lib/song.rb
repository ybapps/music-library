class Song

  @@all_songs = []

  def initialize(song_name, artist_name, album, genre)
    @song_name = song_name
    @artist_name = artist_name
    @genre = genre
    @album = album
    # @@all_songs = []
  end

  def Song.create(song_name, artist_name, album, genre)
    new_song = Song.new(song_name, artist_name, album, genre)
    new_song.save
    new_song
  end

  def Song.all_songs
    @@all_songs
  end

  def save
    @@all_songs << self
  end

  def song_name
    @song_name
  end

  def artist_name
    @artist_name
  end

  def genre
    @genre
  end

  def album
    @album
  end
end

