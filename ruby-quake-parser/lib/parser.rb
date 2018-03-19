require './lib/line'
require './lib/game'
require './lib/kill'

class Parser
  attr_accessor :games
  def initialize
    @games = []
  end

  def parse (path)
    File.open(path, "r") do |f|
      f.each_line do |line|
        if Line.initGame? (line)
          self.add_game(Game.new)
        end

        if Line.kill? (line)
          killer, victim, mean = Kill.captures(line)

          self.last_game.add_player(killer)
          self.last_game.add_player(victim)
          self.last_game.add_kill(Kill.new(killer, victim, mean))
        end
      end
    end

    return self
  end

  def ranking
    ranking = Hash.new(0)
    kills_by_games = @games.map { |game| game.kills_by_players }
    kills_by_games.each {|k| k.each { |player, kills| ranking[player] += kills }}
    ranking.sort_by {|player, kills| kills}.reverse.to_h
  end

  def add_game (game)
    self.games << game
  end

  def last_game
    self.games.last
  end

  def total_games
    self.games.size
  end

end
