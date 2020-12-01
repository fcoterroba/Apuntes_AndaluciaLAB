class Personas():
	def __init__(self, nombre, edad, apellidos):
		self.nombre = nombre
		self.edad = edad
		self.apellidos = apellidos
	def dormido(self, nombre):
		return f"{nombre} está durmiendo"
	def comido(self, nombre):
		return f"{nombre} está comiendo"

persona1 = Personas("Pepito", 21, "Grillo")
persona2 = Personas("Juanito", 23, "Ignaciito")
persona3 = Personas("Minguito", 25, "Malito")
print("La persona número 1 se llama",persona1.nombre,persona1.apellidos,"y tiene",persona1.edad,"años")
print("La persona número 2 se llama",persona2.nombre,persona2.apellidos,"y tiene",persona2.edad,"años")
print("La persona número 3 se llama",persona3.nombre,persona3.apellidos,"y tiene",persona3.edad,"años")

#Se pueden crear más atributos durante la ejecución del programa
persona1.mayorEdad = False

if persona1.mayorEdad:
	print(persona1.nombre,"es mayor de edad")
else:
	print(persona1.nombre,"es menor de edad")

print(persona2.comido(persona2.nombre))
print(persona3.comido(persona3.nombre))

#Herencia
class Estudiante(Personas):
	def estudiar(self, nombre, apellidos, edad):
		print(f"{nombre} {apellidos} tiene {edad} años y está estudiando")

estudiante1 = Estudiante("Francisco", 21, "Terroba")
estudiante1.estudiar(estudiante1.nombre, estudiante1.apellidos, estudiante1.edad)
