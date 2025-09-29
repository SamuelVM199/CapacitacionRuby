#clases

class Persona

  def initialize(nombre)
    @nombre = nombre
  end

  def saludar
    puts "Hola soy #{@nombre}"
  end

  private
  def secreto
    "soy un secreto"
  end

  protected
  def mostrar_nombre
    puts @nombre
  end

  public
  def llamando_secreto
    puts "Hola " +  self.secreto
  end

end

class Animal
  def initialize(nombre)
    @nombre = nombre
  end

  def hablar
    puts "Soy un #{@nombre}"
  end
end

class Perro < Animal
  def ladrar
    puts "Ladrando"
  end
end


#Creacion de objetos

persona1 = Persona.new("Maria")
persona2 = Persona.new("Samuel")

persona1.saludar
persona2.saludar

#Modulos

module Habilidades
  def correr
    puts "Estoy corriendo"
  end
end

class Humano
  include Habilidades

  def initialize(nombre)
    @nombre = nombre
  end
end


person = Humano.new("Adelina")

class Empleado

  @sexo = "M"

  def initialize(nombre, edad, pais, sexo)
    @nombre = nombre
    @edad = edad
    @pais = pais
    @sexo = sexo
  end

  attr_reader :nombre
  attr_writer :edad
  attr_accessor :pais

  def myEdad
    @edad    
  end

end

persona3 = Empleado.new("Samuel", 25, "MX", "M")

puts persona3.nombre

puts persona3.myEdad
persona3.edad = persona3.myEdad + 1
puts persona3.myEdad

puts persona3.pais
persona3.pais = "JPN"
puts persona3.pais