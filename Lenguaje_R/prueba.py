import requests 
from bs4 import BeautifulSoup 

url_movies_by_genre = "https://www.imdb.com/feature/genre/?ref_=nv_ch_gr"
req2 = requests.get(url_movies_by_genre, timeout=4) # Con el método get, solicitamos la web. Le ponemos un timeout por si se cuelga la página
source_movies_genre = req2.text # Con el atributo text obtenemos el código fuente de la página

# Ahora procedemos a obtener información de este código fuente mediante Beautifulsoup:

html2 = BeautifulSoup(source_movies_genre,"html")  # creamos una variable con la clase BeautifulSoup indicando que nuestro código es html

# Miramos cómo es el aspecto de lo que queremos obtener:
t = html2.findAll('div',class_= 'table-cell primary')
print(t[0],'\n')

# Ahora se distribuyen las peliculas según género, mediante una función:
def get_movies(link):
    peliculas = []
    source = requests.get(link).text
    html = BeautifulSoup(source,"html")        
    informacion = html.findAll('h3',class_='lister-item-header')
    a = 1
    for i in informacion: # Para quedarnos con solamente 15 peliculas por género
        if a <= 15:
            peliculas.append(i.getText().replace('\n', ''))
            a+=1
        else:
            break
    return peliculas


dict_movies_by_genre = dict() # Creamos un diccionario con los géneros como claves: acción, comedia, drama, ...
for each in html2.findAll('div',class_= 'table-cell primary'):
    genero = each.find('a').text.strip() # Usamos strip() para eliminar espacios 
    href_genero = each.a.get('href')
    if genero == 'Western':
        break
    dict_movies_by_genre[genero] = get_movies("https://www.imdb.com" + str(href_genero))
    
print(dict_movies_by_genre)