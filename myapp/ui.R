#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("My First App"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(position='right',
                sidebarPanel(
                  sliderInput("bins",
                              "My Slider:",
                              min = 1,
                              max = 50,
                              value = c(5,30),
                              width='300px'
                  )
                ),
                
                # Show a plot of the generated distribution
                mainPanel(
                  plotOutput("distPlot")
                )
  )
))
