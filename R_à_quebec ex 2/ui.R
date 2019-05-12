#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)

# Define UI for application that draws a histogram

dashboardPage(
  dashboardHeader(title = "R a quebec ex 1"),
  dashboardSidebar(),
  dashboardBody(
    
    selectInput("nb_cyl", "Choisir le nombre de cylindre:",
                choices = unique(mtcars$cyl)),
    textInput("titre_plot", "titre du graphique:",
              value = "titre"),
    plotOutput("plot_try")
    
  )
)