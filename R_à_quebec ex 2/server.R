#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
 output$plot_try <- renderPlot({
   
   p <- ggplot(data = mtcars %>% filter(cyl == input$nb_cyl),
               aes( x = mpg, y = disp))+
     geom_point()+
     ggtitle(input$titre_plot, paste0("Nombre de cylindre :", input$nb_cyl))
   p
   
 })

  
}
