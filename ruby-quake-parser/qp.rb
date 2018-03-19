require 'json'
require './lib/parser'

log_path = ARGV.last
parser = Parser.new().parse(log_path)

class Printer
  def self.print(obj, args)
    puts args[1] == "--json" ? JSON.pretty_generate(obj) : obj
  end
end

case ARGV[0]
when "games_report"
    parser.games.each_with_index do |game, index|
      Printer.print({"game_#{index + 1}" => game.report}, ARGV)
    end

when "ranking"
  Printer.print(parser.ranking, ARGV)

when "kills_by_means"
  parser.games.each_with_index do |game, index|
    Printer.print({"game_#{index + 1}" => game.kills_by_means}, ARGV)
  end
end
