Select the best car as per your usage
========================================================
date: 29/02/2020
autosize: true

Introduction
========================================================

The app can be used to help a user decide which car is most suitable for his/her needs. It takes some input from the user and displays the result after processing the input in the form of a table.

This app provides some basic options for the car like transmission type, number of cylinders etc.
Along with this it also asks the user to input the distance and the gasoline price currently.

With this information, the app will calculate the Gasoline Expenditure of each car model available in the showroom. With the help of this estimate it will help the user get a fair idea of how much he will have to spend each day for that car on gas. This will help the user in deciding what car is best for him/her.

Dataset
========================================================

The dataset used in this app is the mtcars dataset available in the datasets library. From this dataset drat, weight, qsec, vs, gear, carb columns are removed in the final table shown in app.
Some new columns like GasolineExpenditure, Transmission type are added in their place.
Let us have a look at the database

```r
head(mtcars, 3)
```

```
               mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4     21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag 21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710    22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
```

Gasoline Expenditure calculation
========================================================

This is a new column added in the final table. It takes the input of distance and gasoline price from the user. It also takes the MilesPerGallon (mpg) information of every car from the table and then calculates the gasoline expenditure of each car in the table. This calculation is done in the server.R file. The following formula is used to calculate the gasoline expenditure:


```r
GasolineExpenditure = input$distance/mpg*input$cost
```

- *input$distance* is the distance input by the user
- *input$cost* is the gasoline cost input by the user
- *mpg* is the Miler Per Gallon information that is available in the dataset

Plot
========================================================

Of all the variables in the dataset, the matrix plot below focuses on only MilesPergallon (mpg), Number of cylinders (cyl), Weight in 1000lbs (wt), and type of transmission (am).


```r
pairs(~mpg+cyl+wt+am, data=mtcars)
```

![plot of chunk unnamed-chunk-3](AppPres-figure/unnamed-chunk-3-1.png)
