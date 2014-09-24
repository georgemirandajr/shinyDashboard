shinyUI(navbarPage("PACE App",
                   
                   tabPanel("Home",
                            
                            fluidPage(
                              h2("Welcome to your PACE dashboard!"),
                              h6("This web app has been designed to show the operational metrics important to you.  PACE stands for Productivity, Accuracy,
                                   Customer Service, and Efficiency."),
                   
                            gridster(tile.width = 400, tile.height = 1000,
                                     marginx = 16, marginy = 16,
                               
                              gridsterItem(col = 1, row = 1, sizex = 2,
                                           sizey = 2,
                                
                                gaugeOutput("livegauge", width = 250, height = 250,
                                            units = "Recorded Docs", min = 0, max = 10,
                                            title = "Incorrect Fees")),
                              
                              gridsterItem(col = 3, row = 1, sizex = 1,
                                           sizey = 1,
                                
                                gaugeOutput("livegauge2", width = 250, height = 250,
                                            units = "Docs/Hr", min = 0, max = 20,
                                            title = "VRC Rate Per Hour")),
                              
                              gridsterItem(col = 1, row = 3, sizex = 2,
                                           sizey = 2,
                                           
                                           plotOutput("gridPlot", height = 200,
                                                      width = 400))
                                )
                              )
                            ),
                   
                   navbarMenu("Recorder",
                              
                              tabPanel("Indexing",
                                       
                                       fluidPage(
                                           
                                           sidebarLayout(
                                               
                                               sidebarPanel(
                                                   
                                                   dateRangeInput("dates", label = h3("Date Range:"), 
                                                                  format = "mm-dd-yyyy",
                                                                  startview = "year",
                                                                  start = "2008-12-01",
                                                                  end = "2008-12-31"),
                                                   #                    dateInput("dates2", label = h3("End Date"), format = "yyyy-mm-dd")
                                                   
                                                   #                    textInput("emp", "Employee Number:",
                                                   #                              value = "E01"),
                                                   
                                                   h1(textOutput("total")),
                                                   "indexed documents in this date range",
                                                   
                                                   h1(textOutput("indAverage")),
                                                   "average hourly rate during this period"
                                                   
                                                   #                    h1(textOutput("total")),
                                                   #                    "indexed this many documents in a year",
                                                   #                    h1(textOutput("peak")),
                                                   #                    "peak documents in a day",
                                                   #                    h1(textOutput("avg")),
                                                   #                    "total average documents per hour"
                                                   
                                               ),
                                               
                                               mainPanel(
                                                   
                                                   tabsetPanel("Indexing Data",
                                                               tabPanel("Plot", plotOutput("trend2")),
                                                               tabPanel("Table", dataTableOutput("trendtable2"))
                                                   )
                                               )
                                           )
                                       )
                              )
                              
                   ),
                   navbarMenu("Elections",
                              
                              tabPanel("Data Entry",
                                       
                                       fluidPage(
                                           
                                           sidebarLayout(
                                               
                                               sidebarPanel(
                                                   
                                                   dateRangeInput("dateDE", label = h3("Date Range:"),
                                                                  format = "mm-dd-yyyy",
                                                                  startview = "year",
                                                                  start = "2012-10-01",
                                                                  end = "2013-10-31"),
                                                   h1(textOutput("totalDE")),
                                                   "voter registrations processed",
                                                   h1(textOutput("deAverage")),
                                                   "average hourly rate during this period"
                                                   ),
                                               
                                               mainPanel(
                                                   
                                                   tabsetPanel("Data Entry Data",
                                                               tabPanel("Plot", plotOutput("trend3")),
                                                               tabPanel("Table", dataTableOutput("trendtable3"))
                                                               )
                                                   )
                                               )
                                           )
                                       )
                              )
)
)