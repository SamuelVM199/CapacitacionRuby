#Metodos dimamicos

class Persona
  %w[saludando coriendo].each do |accion|
    define_method(accion) do |*args|
      puts "Estoy #{accion} #{args.join(' ')}"
    end
  end # = ["nombre", "apellido", "edad"]
end

persona = Persona.new

persona.saludando("hola", "como", "estas")
persona.coriendo("rapido", "lento")
#Metodos dinamicos con parametros

#Eval
codigo = "puts 'Hola Mundo desde eval'"
eval(codigo)

class Calcualdora
  def initialize
    @resultado = "2"
  end

  def calcular(operacion)
    aux = eval(@resultado + operacion)
    puts "El resultado es: #{aux}"
  end
end

calc = Calcualdora.new
calc.calcular("+5")
calc.calcular("*10")

#reflexion

class Fantasma
  def method_missing(m, *args, &block)
    if m == :saludandar
      puts "Intentaste llamar a un metodo (#{m}) que no existe"
    else
      super
    end
  end
end

fantasma = Fantasma.new
fantasma.saludandar("hola", 10)

class Secreto
  private
  def susurrar
    puts "Este es un metodo privado"
  end
end

secreto = Secreto.new
secreto.send(:susurrar)
#secreto.susurrar #Error 
