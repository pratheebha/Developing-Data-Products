
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(datasets)
library(ggplot2)
shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
 newOrange <- subset(Orange, Tree == input$Tree)
 newOrange <- subset(newOrange, age > input$ageRange[1] & age < input$ageRange[2]) 
 
 ggplot(data = newOrange, aes(x = age, y = circumference)) + geom_bar(stat = "identity", fill = "green", color ="red") 
    
  
    })

    # generate circumfernce based on range from ui.R
    
    output$text1 <- renderText({ paste("You have selected", input$Tree)})
    output$text2 <- renderText({paste (" Chosen an Age Range from ", input$ageRange[1], "to", input$ageRange[2])})

    
 

})
