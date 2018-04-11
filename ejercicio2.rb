#Se tienen las clases Rectangulo y Cuadrado cuyos constructores reciben las medidas de los lados correspondientes
#1.- Agregar un método de instancia llámado lados en ambas clases. El método debe imprimir un string con las medidas de los lados.
#2.- Crear un módulo llamado Formula.
#3.- Dentro del módulo Formula crear un método llamado perimetro que reciba dos argumentos (lados) y devuelva el perímetro.
#4.- Dentro del módulo Formula crear un método llamado area que reciba dos argumentos (lados) y devuelva el área.
#5.- Implementar -mediante Mixin- el módulo en las clases Rectangulo y Cuadrado.
#6.- Instanciar un Rectangulo y un Cuadrado.
#7.- Imprimir el área y perímetro de los objetos instanciados utilizando el método del módulo implementado.

module Formula
	@@base = 0
	@@altura = 0
   	def perimetro(base = @@base, altura = @@altura)
   		perimetro = 2 * base + 2 * altura
     	puts "calcular perimetro el perimetro es: #{perimetro}"
	end
   	def area(base = @@base, altura = @@altura)
   		area = base  * altura
     	puts "calcular perimetro el perimetro es: #{area}"
	end 
end

class Rectangulo
	include Formula
  	def initialize(base, altura)
    	@@base = base
    	@@altura = altura
  	end
  	def lados
  		puts "Rectángulo: base=#{@@base} altura=#{@@altura}"
  	end
end

class Cuadrado
	include Formula
  	def initialize(lado)
    	@@base = lado
    	@@altura = lado
  	end
  	def lados
  		puts "Cuadrado: lado=#{@@base}"
  	end
end


rectangulo = Rectangulo.new(8,9)
rectangulo.lados
rectangulo.perimetro()
rectangulo.area()

cuadrado = Cuadrado.new(4)
cuadrado.lados
cuadrado.perimetro()
cuadrado.area()