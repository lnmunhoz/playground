def question(sub) "Insira a quantidade em #{sub}: " end
def calc_seconds(d, h, m, s)
  d.to_i * 24 * 60 * 60 +
  h.to_i * 60 * 60 +
  m.to_i * 60 +
  s.to_i
end

print question "dias"; d = gets.chomp
print question "horas"; h = gets.chomp
print question "minutos"; m = gets.chomp
print question "segundos"; s = gets.chomp
puts "O total em segundos é #{calc_seconds(d, h, m, s)}"
