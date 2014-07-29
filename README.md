newscooptheme
=============

Newscoop Theme
With this proyect we will teach how to make a Theme for Newscoop CMS.

Our goal is to finish a proper working theme for a newspaper.

This theme is based on Bootstrap 3.13

Directory organization
======================
_css > Generic CSS files

_img > Generic images used by CSS

_js > Generic Javascript files, included Bootstrap JS

_misc > fonts > Fonts used by Bootstrap

_tpl > Template files

front.tpl > Front template file

header.tpl > Header template file (common)

nav.tpl > Navigation template file (common)

dummy > Dummy pages. This pages contain a dummy objects for the template. This can be
					 an example of how template must be

Install
=======
To install this theme you must copy to the proper directory on your Newscoop instalation on directory $Newscoop_Instalation/themes/unassigned

After it, open your site template admin and apply them into your publication.

This work with Apache2 License
http://www.apache.org/licenses/LICENSE-2.0.html




Tipos de artículo
=================

articulo > tipo de articulo principal (articulos, articulos del slider)

banner > tipo de artículo para los banners (da igual en que parte estén)

enlaces > tipo de artículo para las imágenes (para los blogs y enlaces de interés)





Campos de Tipo de artículo: artículo
====================================

titular > el titular de la noticia

texto > el texto de la noticia

entradilla > la entradilla de la noticia (la introduccion resumen de la noticia)

sumario > el sumario de la noticia (texto 'titular' resaltado dentro de una noticia)

subtitular > subtitular de la noticia


switches:

portada_con_recorrido > si la noticia sale con la foto y el texto 'entremezclados' en la portada

portada_sin_recorrido > si la noticia no tiene foto (implicitamente ocupa todo el espacio, no hay foto)

portada_sin_recorrido_foto > si la noticia sale con la foto arriba y el texto debajo en la portada

seccion_con_recorrido > si la noticia sale con la foto y el texto 'entremezclados' en la página de seccion

seccion_sin_recorrido > si la noticia no tiene foto (implicitamente ocupa todo el espacio, no hay foto)

seccion_sin_recorrido_foto > si la noticia sale con la foto arriba y el texto debajo en la página de seccion

subseccion_con_recorrido > si la noticia sale con la foto y el texto 'entremezclados' en la página de seccion

subseccion_sin_recorrido > si la noticia no tiene foto (implicitamente ocupa todo el espacio, no hay foto) en la subseccion

articulo_foto_superior > posibilidad 1 de forma de mostrar articulos.

articulo_foto_lateral > posibilidad 2 de forma de mostrar articulos.





Listas de artículos 
====================================


EN LA PORTADA:

PortadaCol1 -> columna 1 de la portada (articulos de "tipo articulo=articulo")

PortadaCol2 -> columna 2 de la portada (articulos de "tipo articulo=articulo")
PortadaCol2Banner -> ?
slider -> columna 2 de la portada, los articulos que se van mostrando en el slider (articulos de "tipo articulo=articulo");

Blogs -> columna 3 de la portada/seccion/subseccion/articulo, lista de blogs (articulos de "tipo articulo=enlaces")
PortadaCol3Banner -> columna 3 de la portada, banners de anuncios (articulos de "tipo articulo=banner")
Interes -> columna 3 de la portada/seccion/subseccion/articulo, lista de enlaces de interés (articulos de "tipo articulo=enlaces")




EN LA SECCION:

SeccionCol1 -> columna 1 de la seccion (articulos de "tipo articulo=articulo")

SeccionCol2 -> columna 2 de la seccion (articulos de "tipo articulo=articulo")
SeccionCol2Banner -> ?

Blogs -> columna 3 de la portada/seccion/subseccion/articulo, lista de blogs (articulos de "tipo articulo=enlaces")
SeccionCol3Banner -> columna 3 de la seccion, banners de anuncios (articulos de "tipo articulo=banner")
Interes -> columna 3 de la portada/seccion/subseccion/articulo, lista de enlaces de interés (articulos de "tipo articulo=enlaces")




EN LA SUBSECCION:

SubSeccionCol1 -> columna 1 de la subseccion (articulos de "tipo articulo=articulo")

SubSeccionCol2Banner -> banners (articulo de "tipo articulo=banner")

Blogs -> columna 3 de la portada/seccion/subseccion/articulo, lista de blogs (articulos de "tipo articulo=enlaces")
SubSeccionCol3Banner -> ?
Interes -> columna 3 de la portada/seccion/subseccion/articulo, lista de enlaces de interés (articulos de "tipo articulo=enlaces")




EN EL ARTICULO:

ArticuloCol1 -> columna 1 de la pagina articulo (articulos de "tipo articulo="articulo")

ArticuloCol2Banner -> banners (articulo de "tipo articulo=banner")

Blogs -> columna 3 de la portada/seccion/subseccion/articulo, lista de blogs (articulos de "tipo articulo=enlaces")
ArticuloCol3Banner -> ?
Interes -> columna 3 de la portada/seccion/subseccion/articulo, lista de enlaces de interés (articulos de "tipo articulo=enlaces")




Tópicos
====================================

Usaremos los tópicos para definir en que 'subsecciones' estará dicha noticia (puede pertenecer a secciones diferentes)


CREACIÓN DE TÓPICOS:

Formato del tópico padre:	seccion_x
	donde x, es el número correspondiente. 
	IMPORTANTE: el orden de los padres ha de coincidir con el orden de las secciones: por ejemplo
			Los hijos también deberian llevar, pero ahora al principio el numero de seccion correspondiente de su padre.
			Si nuestra seccion BARRIOS es la tercera, deberemos crear la siguiente estructura de tópicos
			
				+ seccion_1
					-lo que sea
					...
				+ seccion_2
					-lo que sea de nuevo..
					...
				+ seccion_3
					-1_delicias
					-1_parquesol
					-1_rondilla
					
			Los siguientes ejemplos serían erróneos:
				+ barrios_1
					-delicias
					-parquesol
					-rondilla
				+ barrios
					-delicias
					-parquesol
					-rondilla
				+ mi_seccion_primera
					-delicias
					-parquesol
					-rondilla
				+ seccion_1 
					-delicias
					-parquesol
					-rondilla
				
ASIGNACIÓN DE TÓPICOS:				

	Al crear un artículo, habrá que asignarle SIEMPRE, el tópico padre que contenga al tópico hijo que estemos asignando.
	Se puede asignar múltiples tópicos, y de diferentes secciones (padres) según convenga.
	





