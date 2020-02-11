songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(library)
  library.each_with_index{ |val,i| puts "#{i+1}. #{val}" }
end

def play(library)
  puts "Please enter a song name or number:"
  input = gets.strip
  if library.each{ | title | title.include?(input) }
    puts "Playing #{input}"
  elsif input <= library.length && input > 0
    puts library[input + 1]
  else
    puts "Invalid Input, please try again"
    play(library)
  end
end

def exit_jukebox
  puts "Goodbye"
end