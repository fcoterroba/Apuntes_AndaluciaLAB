# Creamos una clase llamada Calculadora
# El primer parámetro de cada función que esté dentro
# de una clase debe recibir SIEMPRE el parámetro self
class Calculadora:
	# Así se crea el constructor
	def __init__(self):
		print("Hola desde el constructor")
		self.nombre = "Pepe"
		self.edad = 21
		self.descripcion = "Lo que sea"
		self.underAge = True
	def suma(self, param1, param2):
		return param1+param2
	def resta(self, param1, param2):
		return param1-param2
	def mult(self, param1, param2):
		return param1*param2
	def divis(self, param1, param2):
		return param1/param2

# Para instanciar:
calculadora = Calculadora()
calculadora.divis(20,2)
print(calculadora.nombre)
