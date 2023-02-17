
library(shiny)

fluidPage(

    # Application title
    titlePanel("Monte Carlo Simulation"),
    # Sidebar with a slider input for number of points
    sidebarLayout(
        sidebarPanel(
            sliderInput("points", "Choose how many points to sample:", 
                        min = 10, step = 10, max = 10000, value = 1000),
            submitButton("Submit")
            ),

        # Show a plot of the generated distribution
        mainPanel(
            h3("Graph of the simulation"),
            plotOutput("myplot"),
            h3("Approximation of Pi"),
            textOutput("estimation")
        )
    )
)
