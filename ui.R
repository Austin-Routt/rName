
# ui.R

shinyUI(fluidPage(
    titlePanel("rName : A Random American Name Generator"),
    sidebarLayout(
        sidebarPanel(
            
            tabsetPanel(
                tabPanel("About", 
                         includeHTML("about.html"),
                         br(),
                         tags$hr(),
                         "I release this project under an Anti-Copyright license.",
                         img(src = "bigorb.png", height = 100, width = 100)), 
                       
                tabPanel("Name Generator", sliderInput("num", label = h4("How many names would you like ?"),
                                                       min = 1, max = 100, step = 1, value = 1))
            )
            
        ),
        mainPanel(
            tabsetPanel(
                tabPanel("Names", 
                         tableOutput("text1")), 
                tabPanel("Paper", includeHTML("name.html"))
            )
            
           
        )
    )
))