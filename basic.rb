## Conceptos basicos

# Variables locales

nombre = "Samuel"

puts "Hello " + nombre

# Variables globales $

$edad = 24

puts $edad

# Variables de instancia

class Persona
    def initialize
        @edad = 25
        @nombre = "Samuel"
    end

    def mostrar_edad
        puts @edad
    end

end

samuel = Persona.new
samuel.mostrar_edad

# Variable de clase

class Personas
    @@total = 0

    def initialize
        @@total = @@total + 1
    end

    # No se puede llamar en la instancia 
    def self.mostrar_total
        puts @@total
    end
end

persona01 = Personas.new
persona02 = Personas.new

Personas.mostrar_total

# Tipo de datos

edad = 25 #Ruby los interpreta, otro Python

color = :azul #Simbolos
puts color

# && y || o !q negacion

puts "Escribe tu nombre: "
nom = gets
puts "Tu nombre es " + nom