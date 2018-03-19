require "minitest/autorun"
require './lib/parser'

describe Parser do
  it "should parse sample.log files" do
    parser = Parser.new().parse("./tests/integration/sample.log")

    assert_equal 2, parser.total_games
    assert_equal 0, parser.games.first.total_kills
    assert_equal 0, parser.games.first.total_players
    assert_equal 7, parser.games.last.total_kills
    assert_equal 2, parser.games.last.total_players
  end

end
