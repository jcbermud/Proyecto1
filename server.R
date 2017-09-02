
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
estudiantes <- read.csv("C:\\Users\\JCBG\\Documents\\Github\\Proyecto1shiny\\estudiantes.csv",header=TRUE)
estudiantes

shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    x    <- estudiantes[,1]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
    
    # Estadísticos
    mean(x)
    sd(x)
  })
  
})


#library(shiny)


#shinyServer(function(input, output) {

#  output$distPlot <- renderPlot({

 #   # generate bins based on input$bins from ui.R
  #  x    <- faithful[, 2]
#    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
#    hist(x, breaks = bins, col = 'darkgray', border = 'white')

 # })

#})
