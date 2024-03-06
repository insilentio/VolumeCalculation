
library(shiny)

# Define server logic required to draw calculated value
function(input, output, session) {
  
  # function with the determined algorithm to calculate volume
  get_volume <- function(height, hpl = .425) {
    stopifnot(height > 0 && height < 110)
    
    cyl <- (110 - height) / hpl
    floor <- 3.5
    
    cyl + floor
  }

  # render the text output based on slider input
  output$textPlot <- renderText({
    
    paste("Berechnetes Volumen:", round(get_volume(input$cm), 1), "Liter")

  })
}
