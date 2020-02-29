#'This is the shiny server function
#'It takes values that are input in the UI of the webpage and processes them to generate a table
#'Here the GasolineExpenditure is calculated which tells about how much it will cost to cover a 
#'given distance provided by the user




library(shiny)
library(datasets) 
library(dplyr) 




shinyServer(function(input, output) {

    output$table <- renderTable({ 
        dispSeq <- seq(from = input$disp[1], to = input$disp[2], by = 0.1) 
        hpSeq <- seq(from = input$hp[1], to = input$hp[2], by = 1) 
        d <- input$distance
        c <- input$cost
        data <- mtcars %>% transmute(Car = rownames(mtcars), MilesPerGallon = mpg,  
                          GasolineExpenditure = d/mpg*c, 
                          Cylinders = cyl, Displacement = disp, Horsepower = hp,  
                          Transmission = am) 
        data <- filter(data, Cylinders %in% input$cyl, Displacement %in% dispSeq, 
                       Horsepower %in% hpSeq, Transmission %in% input$am) 
        data <- mutate(data, Transmission = ifelse(Transmission == 0, "Automatic", "Manual")) 
        data <- arrange(data, GasolineExpenditure) 
        data 
    }) 

})
