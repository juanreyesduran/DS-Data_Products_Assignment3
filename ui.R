library(shiny)

# Define UI for random distributions 
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Random Distributions"),
  
  # Sidebar with controls to select the random distribution type
  # and number of observations to generate. 
  
  sidebarPanel(
    radioButtons("dist", "Distribution Type:",
                 list("Normal" = "norm",
                      "Uniform" = "unif",
                      "Log-normal" = "lnorm",
                      "Exponential" = "exp")),
    br(),
    
    sliderInput("n", 
                "Number of Observations:", 
                value = 500,
                min = 1, 
                max = 1000)
  ),
  
  # Show a histogram of the generated distribution
  mainPanel(
    tabsetPanel(
      tabPanel("Histogram", plotOutput("plot"))
    )
  )
))