class LiverpoolSquad::Player

  attr_accessor :name, :nationality, :number, :position




  def self.squad
   self.scrape_players
  end


  def self.scrape_players
    players = []
    doc = Nokogiri::HTML(open("https://www.premierleague.com/clubs/10/Liverpool/squad"))
    list_player = doc.css("li")
    list_player.each do |player|
      new_player = self.new
      new_player.name = player.css("h4.name").text.strip
      new_player.nationality = player.css("span.playerCountry").text.strip
      new_player.number = player.css("span.number").text.strip
      new_player.position = player.css("span.position").text.strip
      players << new_player
    end
    players
  end

  # def self.scrape_player
  #     doc = Nokogiri::HTML(open("https://www.premierleague.com/clubs/10/Liverpool/squad"))
  #     player  = self.new
  #     player.name = doc.css("h4.name").text
  #     player.nationality = doc.css("span.playerCountry").text.strip
  #     player.number =  doc.css("span.number").text.strip
  #     player.position =  doc.css("span.position").text.strip
  #     player
  # end



end
