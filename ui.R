#'This is the Shiny UI function
#'It is used to make a UI of the webpage with checkboxes, sliders and textboxes so that the user can 
#'input the values
#'These values are then sent to the Shiny Server function which processes these values
#'Ultimately the tableOutput function is used to display the output in the webpage





library(shiny)

shinyUI(fluidPage(

    titlePanel("Gasoline expenditure for each car"),

    sidebarLayout(
        sidebarPanel(
            helpText("Please provide the following information to calculate the total gasoline expenditure. Also choose the type of car you want."), 
            numericInput('distance', 'Distance (in miles):', 10, min = 1, max = 500), 
            numericInput('cost', 'Gasoline Price ($ per gallon):', 2.458, min = 2, max = 5, step=0.01), 
            checkboxGroupInput('cyl', 'Choose number of cylinders:', c("Four" = 4, "Six" = 6, "Eight" = 8), selected = c(4,6,8)), 
            checkboxGroupInput('am', 'Transmission type:', c("Automatic" = 0, "Manual" = 1), selected = c(0,1)), 
            sliderInput('disp', 'Displacement', min = 71, max = 472, value = c(71,472), step = 10), 
            sliderInput('hp', 'Gross horsepower', min = 52, max = 335, value = c(52,335), step = 10)
        ),

        mainPanel(
            tableOutput('table') 
        )
    )
))
