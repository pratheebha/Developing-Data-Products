
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
#install.packages("shiny")
library(shiny)

library(ggvis)
library(datasets)
data(Orange)
library(ggplot2)

shinyUI(fluidPage(

  # Application title
  titlePanel("Growth of Orange Tree"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(position = "left",
    sidebarPanel(
      selectInput("Tree",
                  label = "Tree Number",
                  choices = list("choice 1" = 1, "choice 2" = 2,
                                  "choice 3" = 3, "choice 4" = 4,
                                    "choice 5" = 5), selected = 1 )),
      sliderInput("ageRange",
                  label = "Age of Orange Tree",
                  min = 100,
                  max = 1600,
                  value = c(100, 1600))
    ),

    # Show a plot of the generated distribution
    mainPanel(
      h3("Description"),
      p("The Orange dataset has data on the growth pattern of 5 trees at diffrent ages."),
      p("Choose the tree number from the dropdown and the ageRange from the slider above to visualize the circumferences using a bar plot"),
      p(" "),
      plotOutput("distPlot"),
      textOutput("text1"),
      textOutput("text2")
      
    )
  
))
