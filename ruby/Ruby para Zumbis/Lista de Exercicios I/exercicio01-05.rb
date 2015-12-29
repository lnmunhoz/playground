def calc_desconto(v, p) v.to_i * p.to_i / 100 end

print "Insira o valor da mercadoria: "; v = gets.chomp

print "Insira o pecentual de desconto: "; p = gets.chomp

desconto = calc_desconto(v, p)
puts "O valor do desconto é #{desconto}."
puts "O valor a pagar é #{v.to_i - desconto}."
