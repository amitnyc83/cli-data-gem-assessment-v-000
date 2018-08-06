class Teams :: CLI

  def call
  Teams :: Scraper.new.list_teams
  puts " Welcome to a list of Teams in the Premier League this season"
  start
  end


  def start

    puts ""
    puts " Which team would you like to know more of? Select from the list below"
      list_of_teams
    puts "Type in a number from 1 to 20 to read more about the players in the team"

    input = gets.strip

    team = Teams:: Team.find(input.to_i)

    list_of_players(team)



  end

def list_of_players(team)

end


def list_of_teams(input)
end

def list_of_player_stats(player)
  
  puts ""
  puts "--------------#{player.name} - #{player.nationality}----------"
  puts " Number:           #{player.number}"
  puts " Position:         #{player.position}"
  puts " Appearances:      #{player.appearances} "
  puts " Clean sheets:     #{player.clean_sheets}"
  puts " Goals:            #{player..goals}"
  puts ""
end
