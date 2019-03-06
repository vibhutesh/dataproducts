ls#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Load Data

area <- read.csv("./forestarea.csv")

# Define a server for the Shiny app 
 function(input, output) { 
    
   # Fill in the spot we created for a plot 
   output$areaforest <- renderPlot({ 
      
     # Render a barplot 
     barplot(area[,input$Region],  
             main=input$Region, 
             ylab="Forest Area Cover (Sq-Meter)", 
             xlab="Year") 
   })
 }