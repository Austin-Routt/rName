library(shiny)



shinyServer(
    function(input, output) {
        
        
        
        
        output$text1 <- renderTable({ 
            
            
            count = 0
            onehundredcoins <- sample(0:1, size =  input$num, replace = TRUE)
            onehundrednames <- rName("Male")
            
            for(i in onehundredcoins){
                
                count = count + 1
                
                if(i == 0){
                    onehundrednames[count] <- rName("Male")
                }
                if(i==1){
                    onehundrednames[count] <- rName("Female")
                }
                
            }
            
            Names <- onehundrednames 
             
             as.data.frame(Names)
            
        
            
    
        })
        
    }
)