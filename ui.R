#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


# Load Data

urlfile<-'https://raw.github.com/vibhutesh/dataproducts/master/forestarea.csv'

area <- read.csv(url(urlfile))


# Use a fluid Bootstrap layout 
fluidPage(     
    
   # Give the page a title 
   titlePanel("Forest Area Cover sq-meter"), 
    
   # Generate a row with a sidebar 
   sidebarLayout( 
     sidebarPanel(p(strong("Also Read:",style="color:blue"), a("Info Page",href="http://rpubs.com/vibhutesh/readme")), 
       selectInput("Region", "Region:",  
                   choices=colnames(area)), 
       hr(), 
       helpText("Forest Area Cover") 
     ), 
      
     # Create a spot for the barplot 
     mainPanel( 
       plotOutput("areaforest")   
     ) 
      
   ) 
 ) 
