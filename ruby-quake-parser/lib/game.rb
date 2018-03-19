require 'set'

class Game
  attr_accessor :players, :kills
  def initialize
    @kills = []
    @players = Set.new
  end

  def add_player (player)
    # <world> não é um player e não deve aparecer na lista de players
    if player != '<world>'
      self.players << player
    end
  end

  def add_kill (kill)
    self.kills << kill
  end

  def kills_by_players
    kills = Hash.new(0)

    self.kills.each do |kill|

      if kill.killer == '<world>'
        # Quando o <world> mata o player, ele perde -1 kill
        kills[kill.victim] -= 1

      else
        # Quando for um player normal, incrementa +1 kill
        kills[kill.killer] += 1
      end

    end

    return kills
  end

  # Plus
  def kills_by_means
    kills = Hash.new(0)

    self.kills.each do |kill|
      kills[kill.mean] += 1
    end

    return kills
  end

  def total_players
    self.players.size
  end

  def total_kills
    self.kills.size
  end

  def report
    {
      :total_kills => self.total_kills,
      :players => self.players.map {|player| player},
      :kills => self.kills_by_players
    }
  end

end
