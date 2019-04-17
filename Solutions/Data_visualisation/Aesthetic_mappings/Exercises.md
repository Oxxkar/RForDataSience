# AESTHETIC MAPPINGS
# Exercises



## 1. What’s gone wrong with this code? Why are the points not blue?

```R
ggplot(data = mpg) + 
geom_point( mapping = aes(x = displ, y = hwy, color = "blue"))
```
The argument ```color = "blue"``` is included within the mapping argument, and as such, it is treated as an aesthetic, 
which is a mapping between a variable and a value.


The following code does produces the expected result.


```R
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), colour = "blue")
```


## 2. Which variables in mpg are categorical? Which variables are continuous? 
(Hint: type ?mpg to read the documentation for the dataset.) 
How can you see this information when you run mpg?

```R
glimpse(mpg)
```
Those with ```<chr>``` above their columns are categorical, while those with ```<dbl>``` or ```<int>``` are continuous.


## 3. Map a continuous variable to color, size, and shape. 
How do these aesthetics behave differently for categorical versus continuous variables?

#### color
```R
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = cty)) + 
  geom_point()
```

#### size
```R
ggplot(data = mpg, mapping = aes(x= displ, y = hwy, size = cty)) +
  geom_point()
```

#### shape
```R
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, shape = cty))+
  geom_point()
  #> Error: A continuous variable can not be mapped to shape
```
## 4. What happens if you map the same variable to multiple aesthet‐ ics?


