def calc_tempo(d, v) d.to_f / v.to_f end

print "Insira a distancia a percorrer: "; d = gets.chomp
print "Insira a velocidade media da viagem: "; v = gets.chomp
puts "O tempo da viagem será  #{calc_tempo(d, v)} horas."
