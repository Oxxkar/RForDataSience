library(tidyverse)

install.packages(c("nycflights13", "gapminder", "Lahman"))
x <- c("nycflights13", "gapminder", "Lahman")
lapply(x, require, character.only = TRUE)



data(mpg)
mpg #mpg contains observations collected by 
    #the US Environment Protection Agency on 38 models of cars


# displ : Cars engine size, in liters
# hwy : Fuel efficiency (miles per gallon)
### Low efficiency == consumes more fuel
### High efficiency == consumes fewer fuel


# displ on the x-axis
# hwy on the y-axis

ggplot(data = mpg) + # es la funcion para especificar que dato se usara para el grafico
  geom_point(mapping = aes(x = displ, y = hwy)) # agrega la capa que dara forma al grafico. En este caso geom_point() es para un scatterplot
            # El argumento mapping es para darle sentido a los ejes del grafico junto con aes()

#de manera general la estructura es:
# ggplot(data = <DATA>) +
    #<GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))

####
#1. Run ggplot(data = mpg). What do you see?
ggplot(data = mpg) #No occure nada. No hemos dicho que datos usar en los ejes

#2. How many rows are in mtcars? How many columns?
dim(mtcars) # 32 Filas, 11 Columnas

#3. What does the drv variable describe? Read the help for ?mpg to find out.
?mpg # El tipo de traccion del auto. f = traccion delantera, r= trasera, 4 = 4x4

#4. Make a scatterplot of hwy versus cyl.
ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y = cyl))
#5. What happens if you make a scatterplot of class versus drv? Why is the plot not useful?
ggplot(data =  mpg)+
  geom_point(mapping = aes(x =class ,y=drv))
# Ambas variables son categoricas
####


#aesthetic: propiedad visual para el rafico. Color, forma, tamaño. 

ggplot(mpg) + geom_point(aes(displ,hwy,color =class))

ggplot(data = mpg) +
  geom_point(mapping = aes( x = displ, y = hwy, color = class))

#Agregamos color segun el n de la categoria Class.



ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = class))


ggplot(mpg) + geom_point(aes(displ, hwy, size = class))

# Aqui asignamos niveles de tamaño. PERO esto no es recomendado. Asignamos una variable categorica (class) a un nivel cuantitativo (tamaño)

#  alpha: cambia la transparencia de los puntos
ggplot(data = mpg) + 
  geom_point(mapping = aes (x = displ, y = hwy, alpha = class))

ggplot(mpg) + geom_point(aes(displ, hwy, alpha = class))

# shape: cambia la forma de los puntos
ggplot( data = mpg) + 
  geom_point(mapping = aes( x = displ, y = hwy, shape = class))


ggplot(mpg) + geom_point(aes(displ, hwy, shape = class))

#usar estas esteticas haran que perdamos algunos valores que no seran mostrados en el grafico

#Puedes fijar la estetica del grafico manualmente

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

ggplot(mpg) + geom_point(aes(displ, hwy), color = "blue")

# para colocar una estetica va por fuera de aes()

# What’s gone wrong with this code? Why are the points not blue?
ggplot(data = mpg) + 
  geom_point( mapping = aes(x = displ, y = hwy, color = "blue"))
  # color = "blue". Debe ir por afuera de aes().

#Which variables in mpg are categorical? Which variables are continuous? 
#(Hint: type ?mpg to read the documentation for the dataset.)
#How can you see this information when you run mpg?
?mpg
View(mpg)
str(mpg)


