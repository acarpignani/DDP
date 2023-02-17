
library(ggplot2)
library(shiny)

function(input, output) {
    sim <- reactive({
        nosim <- input$points
        x <- runif(nosim, -1, 1)
        y <- runif(nosim, -1, 1)
        d <- x^2 + y^2
        io <- ifelse(d < 1, TRUE, FALSE)
        data.frame(x = x, y = y, d = d, io = io)
    })
    # Estimating Pi with Monte Carlo
    estim <- reactive(4 * {sum(1 * sim()$io) / nrow(sim())})
    output$estimation <- renderText(estim())
    output$myplot <- renderPlot({
        ggplot(data = sim()) +
            geom_point(aes(x = x, y = y, colour = as.factor(io))) +
            geom_function(fun = function(x) {sqrt(1 - x^2)}, xlim = c(-1, 1)) +
            geom_function(fun = function(x) {- sqrt(1 - x^2)}, xlim = c(-1, 1)) +
            labs(colour = "In/Out")
    })
}
