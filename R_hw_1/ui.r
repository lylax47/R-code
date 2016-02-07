library(shiny)
mydata <- read.csv("C:\\Users\\John\\Documents\\HTML_project_files\\R graphs\\R_hw_1\\data\\all_words.csv", sep = ",", header = T, encoding = "UTF-8")

shinyUI(
	fluidPage(
		titlePanel("One thousand Most Frequently Used Words"),

		fluidRow(
			column(3,
				selectInput("language",
							"Choose Language:",
							c("ALL",
								unique(as.character(mydata$language))))
			)
		),
		fluidRow(
			DT::dataTableOutput("table")
		)
	)
)
