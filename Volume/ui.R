
library(shiny)

# Define UI for application
fluidPage(

    # Application title
    titlePanel("Volumen im Gärtank berechnen"),
    
    # App with 2 rows: 1st for slider to choose input value
    # 2nd for text output of calculated result
    fluidRow(
      column(12,
             sliderInput("cm",
                         "Resthöhe in cm:",
                         min = 0,
                         max = 110.0,
                         value = 26.5,
                         step = .1,
                         width = "50%"),
      ),
      column(12,
             textOutput("textPlot"))
    )
)
