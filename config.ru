# config.ru
# Modificar el archivo config.ru para adaptarlo a los siguientes requerimientos:

# Si se ingresa a la url /index:
# Agregar un código de respuesta 200.
# Agregar en los Response Headers un Content-type de tipo text/html.
# Agregar en el Response Body una etiqueta de título que contenga un texto "Estás en el Index!".
# Si se ingresa a la url /otro:
# Agregar un código de respuesta 200.
# Agregar en los Response Headers un Content-type de tipo text/html.
# Agregar en el Response Body una etiqueta de título que contenga un texto "Estás en otro landing!".
# Si se ingresa a cualquier otra url:
# Agregar un código de respuesta 404.
# Agregar en los Response Headers un Content-type de tipo text/html.
# Agregar en el Response Body el archivo 404.html creado al inicio.
require 'rack'
class MiPrimeraWebApp
  	def call(env)
  		@url = env['REQUEST_PATH']
  		if url == '/index'
      		[200, { 'Content-Type' => 'text/html;  charset=utf-8'}, ['<h1> Estas en el Index </h1>']]
    	elsif @url == '/otro'
    		[200, { 'Content-Type' => 'text/html;  charset=utf-8' }, ['<h1> Estas en otro landing </h1>']]
    	else
    		[404, { 'Content-Type' => 'text/html' }, ['File.read("404.html")']]
    	end
 	 end
end
run MiPrimeraWebApp.new