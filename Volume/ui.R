
library(shiny)

# Define UI for application
fluidPage(

    # Application title
    titlePanel("Volumen im Gärtank berechnen"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("cm",
                        "Resthöhe in cm:",
                        min = 1,
                        max = 109.0,
                        value = 25.5,
                        step = .1)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            textOutput("textPlot")
        )
    )
)
