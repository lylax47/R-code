library(shiny)
df <- read.csv("C:\\Users\\John\\Documents\\HTML_project_files\\R graphs\\R_hw_1\\data\\all_words.csv", sep = ",", header = T, encoding = "UTF-8")

shinyServer(
  function(input, output) {
    output$table <- DT::renderDataTable(DT::datatable({
      mydata <- df
      if (input$language != "ALL"){
        mydata <- mydata[mydata$language == input$language,]
      }
      mydata
    }))
  }
)