library(shiny)
shinyUI(
    pageWithSidebar(
      headerPanel("Shiny Application and Reproducible Pitch / Project"),
      sidebarPanel(
        h3("Instructions"),
        p("This application calculates an aggregate function over three input values. Please input your values on the “Input 1”, “Input 2”, “Input 3” boxes and the select the operation you want to execute from the “Operation” box."),
        hr(),
        h3("Values"),
        numericInput("in1", "Input 1", 0, min = 1, max = 10, step = 1),
        numericInput("in2", "Input 2", 0, min = 1, max = 10, step = 1),
        numericInput("in3", "input 3", 0, min = 1, max = 10, step = 1),
        selectInput("operation", label = h3("Operation"), choices = list("SUM" = 1, "MEAN" = 2, selected = 1))
      ),
      mainPanel(
        h3("Operation Results"),
        verbatimTextOutput("results")
      )
    )
)