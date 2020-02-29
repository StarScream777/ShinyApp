---
title: "Documentation"
output: 
    html_document:
        keep_md: true
---

## Introduction

The Shiny app created is used to help a user decide which car is most suitable for his/her needs. This is done by providing the user with a bunch of options like selecting the the numeber of cylinders needed in the car, the car should be automatic or manual.

Also two textboxes are also provided to the user: Distance and Gasoline Price.

The distance can be something like how much far is the user's place of work from the home. The gasoline price is the current gas price. With this information, the app will calculate the Gasoline Expenditure of each car model available in the showroom. With the help of this estimate it will help the user get a fair idea of how much he will have to spend each day for that car on gas. This will help the user in deciding what car is best for him/her.

Following are the components of the app:

#### Distance

Enter the distance in miles

#### Gasoline price

Enter the current price of gasoline in $ per gallon

#### Choose number of cylinders

Enter the number of cylinders needed in car: 4, 6, 8

#### Transmission type of car

Automatic or manual car

#### Displacement

The displacement of the engine needed

#### Horsepower

The engine horsepower needed

#### Table

The table displas a whole bunch of information from names of cars to the mileage of car.
The important column is the GasolineExpenditure column which calculates the cost from the values inputted in the textboxes earlier.
The table is dynamic, that is, it changes every time a checkbox or slider is selected or moved in real time.
