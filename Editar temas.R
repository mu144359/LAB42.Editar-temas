###################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Selene Muñoz Ortega (UAEH)
#V9
# LABORATORIO - Gráficos en R con ggplot2 para Ciencia de Datos
# editar con temas de ggplot2



#instalando paquete con los datos
#install.packages("gapminder")
#install.packages("ggplot2")



# cargar libreria ggplot2 y gapminder
library(ggplot2)
library(gapminder)

# cargando datos a entorno
data("gapminder")

# filtrando por año 2007
gapminder2007 <- gapminder[gapminder$year == '2007', ]


# haciendo grafica de puntos
p1 <- ggplot(data = gapminder2007,
             mapping = aes(x = gdpPercap,
                           y = lifeExp,
                           color = continent)) +
  geom_point()

p1

# temas básicos
p1 + theme_bw()
p1 + theme_minimal()

# mas temas
install.packages('ggthemes')
library(ggthemes)

# temas y colores
p1 + theme_economist()+scale_color_economist()
p1 + theme_excel_new()+scale_color_excel_new()
p1 + theme_wsj()+scale_color_wsj()
p1 + theme_dark()+scale_color_viridis_d()
p1 + theme_test()+scale_color_tableau()
p1 + theme_pander()+scale_color_pander()
p1 + theme_calc()+scale_color_calc()