def celsius_to_fahrenheit(c) 9 * c / 5 + 32 end

print "Insira a temperatura em Celsius: "; c = gets.chomp
puts "O valor em Fahrenheit é #{celsius_to_fahrenheit(c.to_f)}."
