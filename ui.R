#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that predicts horsepower from mpg
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Predict Horsepower from MPG"),
  
  # Sidebar with a slider for MPG
  sidebarLayout(
    sidebarPanel(
       sliderInput("sliderMPG", "What is the MPG of the Car?", 10, 35, value=20),
       checkboxInput("showModel1", "Show/Hide Model 1", value=TRUE),
       checkboxInput("showModel2", "Show/Hide Model 2", value=TRUE)
    ),
    
    # Show a plot of the prediction
    mainPanel(
       plotOutput("plot1"),
       h3("Predicted Horsepower from Model 1:"),
       textOutput("pred1"),
       h3("Predicted Horsepower from Model 2:"),
       textOutput("pred2")
    )
  )
))
