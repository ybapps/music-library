require 'rspec'
require 'music_library'
require 'artist'
require 'genre'
require 'song'

describe 'Song' do
  it 'is initialized with song name, artist name, album and genre' do
    test_song = Song.new('Young Americans', 'David Bowie', 'Earthlings', 'Pop')
    test_song.should be_an_instance_of Song
  end

  it 'has an song name' do
    test_song = Song.new('Young Americans', 'David Bowie', 'Earthlings', 'Pop')
    test_song.song_name.should eq 'Young Americans'
  end

  it 'has an artist name' do
    test_song = Song.new('Young Americans', 'David Bowie', 'Earthlings', 'Pop')
    test_song.artist_name.should eq "David Bowie"
  end

  it 'has a genre' do
    test_song = Song.new('Young Americans', 'David Bowie', 'Earthlings', 'Pop')
    test_song.genre.should eq "Pop"
  end

  it 'has an artist name' do
    test_song = Song.new('Young Americans', 'David Bowie', 'Earthlings', 'Pop')
    test_song.album.should eq "Earthlings"
  end

  describe '.all_songs' do
    it 'is empty at first' do
      Song.all_songs.should eq []
    end

    it 'gets added to when save is called on an instance' do
      test_song = Song.new('Young Americans', 'David Bowie', 'Earthlings', 'Pop')
      test_song.save
      Song.all_songs.should eq [test_song]
    end
  end
end

describe 'Music_Library' do
  it 'initializes a music library with a title' do
    test_music_library = MusicLibrary.new("Sally's Music Collection")
    test_music_library.should be_an_instance_of MusicLibrary
  end

  it 'is initialized with an empty array to hold songs' do
    test_music_library = MusicLibrary.new([])
    test_music_library.all_songs.should eq []
  end
end

describe 'Genre' do
  it 'initializes a style of music for an song' do
    test_music_genre = Genre.new("Pop")
    test_music_genre.should be_an_instance_of Genre
  end
end

describe 'Artist' do
  it 'initializes an artist with a name' do
    test_artist = Artist.new("David Bowie")
    test_artist.should be_an_instance_of Artist
  end
end

describe 'ml_ui' do
  it 'lets the user create collection of songs, one song at a time' do

  end
end
