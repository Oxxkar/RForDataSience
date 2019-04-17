## 1. Run ggplot(data = mpg). What do you see?

```R
ggplot(data = mpg)
```

This code creates an empty plot. The ggplot() function creates the background of the plot, but since no layers were specified with geom function, nothing is drawn.




## 2. How many rows are in mtcars? How many columns?

There are 32 rows and 11 columns in the mtcars data frame

```R
nrow(mtcars)
# 32
ncol(mtcars)
# 11
```

#### The glimpse() function also displays the number of rows and columns in a data frame

## 3. What does the drv variable describe? Read the help for ?mpg to find out

The drv variable is a categorical variable which categorizes cars into front-wheels, rear-wheels, or four-wheel drive

## 4. Make a scatterplot of hwy versus cyl.

```R
ggplot(mpg, aes(x = hwy, y = cyl)) +
  geom_point()
```
## 5. What happens if you make a scatterplot of class versus drv? Why is the plot not useful?
```R
ggplot(mpg, aes(x = class, y = drv)) +
  geom_point()
```
A scatter plot is not a useful display of these variables since both drv and class are categorical variables. Since categorical variables typically take a small number of values, there are a limited number of unique combinations of (x, y) values that can be displayed

A simple scatter plot does not show how many observations there are for each (x, y) value. As such, scatterplots work best for plotting a continuous x and a continuous y variable, and when all (x, y) values are unique.
