#Array

compras = ["pan", "queso"]
puts compras

actualizar_compras = compras.map do |articulo|
  
  articulo unless articulo == "pan"

end

puts "-----------------------"
puts actualizar_compras

actualizar_compras = compras.select do |articulo|
  
  articulo == "pan"

end

puts "-----------------------"
puts actualizar_compras

numeros = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

sumatoria = numeros.reduce(10) do |acumulador, n|
  
  acumulador + n

end

puts "-----------------------"
puts sumatoria

puts "----------------------------------------------"

# Hashes Diccionarios

persona = {"nombre" => "Samuel", "edad" => 25, "sexo" => "Masculino"}
puts persona["nombre"]

persona.each do |clave, valor|
  puts "#{clave}: #{valor}"
end

#yield

def saludar

  puts "hola"
  yield
  puts "adios"

end

saludar do
  puts "---------------------------"
end

def ejecurar_bloque(&block)
  block.call
end

ejecurar_bloque do

  puts "Esto es un bloque de codigo"
  suma = 1 + 2
  puts suma

end