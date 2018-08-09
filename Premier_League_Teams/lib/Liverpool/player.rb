class LiverpoolSquad::Player

  attr_accessor :name, :nationality, :number, :position, :appearances, :clean_sheets, :goals


  def self.squad
   self.scrape_players
  end


  def self.scrape_players
    players = []
    players << self.scrape_player
    players
  end

  def self.scrape_player
      doc = Nokogiri::HTML(open("https://www.premierleague.com/clubs/10/Liverpool/squad"))
      player  = self.new
      player.name = doc.css("h4.name").text
      player.nationality = doc.css("span.playerCountry").text
      player.number = doc.css("span.number").text
      player.position = doc.css("span.position").text
      player
  end


end
