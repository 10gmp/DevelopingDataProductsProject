library(shiny)

shinyServer(
  function(input, output){
    calc <- reactive({
      if(input$operation == 1){
        sum(c(input$in1, input$in2, input$in3))
      }
      else if(input$operation == 2){
        mean(c(input$in1, input$in2, input$in3))
      }
    })
    output$results <- renderPrint({calc()})
  }
)