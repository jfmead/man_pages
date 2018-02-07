def menu 
  puts '-------------'
  puts 'CHEATSHEET'
  puts '1) Command Line'
  puts '2) Search'
  puts '3) Exit'
  puts '--------------'
  option = gets.strip.to_i
  case option 
    when 1
      command_line
    when 2
      search 
    when 3
      exit 
    else 
      puts "not an option"
      menu
    end 
end 

def search 
  puts "enter the command you're looking for"
  word = gets.strip 
  output = `man "#{word}"`
  puts "#{output}"
  menu
end 

def command_line
  puts '------------'
  puts '1) cp'
  puts '2) mv'
  puts '3) cd'
  puts '4) Main Menu'
  puts '------------'

  choice = gets.strip.to_i
  case choice 
    when 1
      output = `man cp`
      puts "#{output}"
      command_line
    when 2
      output = `man mv`
      puts "#{output}"
      command_line
    when 3
      output = `man cd`
      puts "#{output}"
      command_line
    when 4
      menu
    else 
      puts "Invalid choice. Try again."
      menu
  end 
end 

  
menu 

