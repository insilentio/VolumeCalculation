
library(shiny)

# Define UI for application
fluidPage(

    # Application title
    titlePanel("Volumen im Gärtank berechnen"),
    
    fluidRow(
      column(12,
             sliderInput("cm",
                         "Resthöhe in cm:",
                         min = 1,
                         max = 109.0,
                         value = 25.5,
                         step = .1),
             br(),
             textOutput("textPlot")
      )
    )
)
