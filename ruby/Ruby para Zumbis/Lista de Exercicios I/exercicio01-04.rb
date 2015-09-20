def calc_aumento(salario, porcentagem)
  salario.to_i * porcentagem.to_i / 100
end

print "Insira o valor do salário: "; salario = gets.chomp
print "Insira a porcentagem de aumento: "; porcentagem = gets.chomp

novo_salario = salario.to_i + calc_aumento(salario, porcentagem)
puts "O valor do novo salário é #{novo_salario}."
