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

articulo > tipo de articulo principal (el de los artículos)

banner > tipo de artículo para los banners

imagen > tipo de artículo para las imágenes




Campos de Tipo de artículo: artículo
====================================

titular > el titular de la noticia

texto > el texto de la noticia

entradilla > la entradilla de la noticia (la introduccion resumen de la noticia)

sumario > el sumario de la noticia (texto 'titular' resaltado dentro de una noticia)

subtitular > subtitular de la noticia

subseccion > las noticias se organizan en secciones, y éstas a vez en un nivel más, subsecciones

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








