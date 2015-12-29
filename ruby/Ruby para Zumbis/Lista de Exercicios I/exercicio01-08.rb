def fahrenheit_to_celsius(f) (f -  32) / 1.8 end

print "Insira a temperatura em Fahrenheit: "; f = gets.chomp
puts "O valor em Celsius é #{fahrenheit_to_celsius(f.to_f)}."
