#CLI Controller
class LiverpoolSquad::CLI

  def call
    list_players
    player_stats
    goodbye
  end

  def list_players
   puts "---------------------------------------------------------------------"
   puts " Welcome to Liverpool Football Club Premier League Team of the season"
   puts "---------------------------------------------------------------------"
  @players = LiverpoolSquad::Player.squad
  @players.each.with_index(1) do |player, i|
    puts " #{i}. #{player.name}"
  end
end

  def player_stats
    input = nil
    while input != "exit"
      puts "Select a number from the list below to know more about the player. Type Exit to quit or type LIST to see squad again"
      input = gets.strip.downcase

      if input.to_i > 0
        new_player = @players[input.to_i-1]
        puts "---------------------------------------"
        puts "Name:             #{new_player.name}"
        puts "---------------------------------------"
        puts "Nationality:      #{new_player.nationality}"
        puts "---------------------------------------"
        puts "Squad Number:     #{new_player.number}"
        puts "---------------------------------------"
        puts "Position:         #{new_player.position}"
        puts "---------------------------------------"
      elsif input == "list"
        list_players
      else
      puts "Invalid input. Select a number from the list below to know more about the player. Type QUIT to exit or type LIST to see squad again "
    end
  end
end


  def goodbye
  puts "Thank you visiting the Liverpool Squad page. See you again soon! "
  end



end
