begin
  suma = 0/x
rescue ZeroDivisionError => e
  puts "divicion equivocada #{e.message}"
rescue => e
  puts "Error general #{e.message}"
ensure
  puts "Programa terminado"
end

puts "Continuando con el programa"

#exceptiones personalizadas
class MiError < StandardError
  def validar_numero(num)
    raise MiError, "El numero no puede ser negativo" if num < 0
    puts "El numero es #{num}"
  rescue MiError => e
  puts "Error personalizado: #{e.message}"
  end
end

obj = MiError.new
obj.validar_numero(-1)

