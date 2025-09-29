#condicionales unless, case when, if/elsif

llueve = true

unless llueve
  puts "Sal a pasear"
end

#ciclos until, while, for, each
i = 0

until i == 10
  
	puts i
	i += 1

end

for numero in 0..10

	puts "#{"El numero actual es : " }#{numero}"

end

nombres = ["Samuel", "Adelina"]

#|Variable temporal|
nombres.each do |nombre|

	puts nombre

end

#Modificadores 

puts "Solo muestrate si es verdad" if true #unless