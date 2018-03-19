require "minitest/autorun"
require "./lib/game"
require "./lib/kill"

describe Game do
  before do
    @game = Game.new
    @player = 'player1'
  end

  it "should be able to get total players" do
    assert_equal 0, @game.total_players
  end

  it "should be able to get kills by means" do
    @game.add_kill(Kill.new('<world>', @player, 'Some_Reason'))
    @game.add_kill(Kill.new('player2', @player, 'Some_Reason'))
    @game.add_kill(Kill.new('player2', @player, 'Other_Reason'))

    assert_equal 2, @game.kills_by_means['Some_Reason']
    assert_equal 1, @game.kills_by_means['Other_Reason']
  end

  describe 'when the player is <world>' do
    it "should not be added to the players" do
      @game.add_player('<world>')
      assert_equal 0, @game.total_players
    end

    it "should decrement 1 kill if kills a player" do
      @game.add_kill(Kill.new('<world>', @player, 'Some_Reason'))
      assert_equal -1, @game.kills_by_players[@player]
    end
  end

  describe 'when the player is a player' do
    it "should be added to the game" do
      @game.add_player(@player)
      assert_equal 1, @game.total_players
    end

    it "should not be added twice" do
      @game.add_player(@player)
      @game.add_player(@player)
      assert_equal 1, @game.total_players
    end

    it "should increment 1 kill if kills another player" do
      @game.add_kill(Kill.new(@player, 'player2', 'Some_Reason'))
      assert_equal 1, @game.kills_by_players[@player]
    end
  end

end
