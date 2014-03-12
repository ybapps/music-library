require ('./lib/music_library')
require ('./lib/artist')
require ('./lib/genre')
require ('./lib/song')
require ('./lib/album')


def main_menu
  puts 'Welcome to the Music Library. This is not iTunes whatsoever.'
  puts 'Enter "a" to add an song to the Music Library'
  user_input = gets.chomp
  case user_input
  when 'A', 'a'
    add_song
  end
end

def add_song
  puts "What is the name of the song?\n"
  user_song = gets.chomp

  puts "What is the name of this artist?\n"
  user_artist = gets.chomp

  puts "What is the name of this album?\n"
  user_album = gets.chomp

  puts "What is the genre of this song?\n"
  user_genre = gets.chomp

  new_song = Song.create(user_song, user_artist, user_album, user_genre)
  # puts Song.all_songs
  #new_song.save

  puts "The song you entered is '#{user_song}' by #{user_artist}! Yeah, I saw them before they were big.\n\n"
  give_options
end

def give_options

  puts "Would you like to see your song library? Press 's'.\n"
  puts "Would you like to enter another song? Press 'y'.\n"
  puts "Would you like to return to the main menu? Press any key.\n\n"

  input = gets.chomp
  if input == 'y'
    add_song
  elsif input == 's'
    Song.all_songs.each_with_index do |song, index|
      puts "#{index+1}. '#{song.song_name}' by #{song.artist_name} on the album #{song.album} in the #{song.genre} genre.\n\n"
    end
    give_options
  else
    main_menu
  end
end

main_menu
