library(rmarkdown)

# Configurar la cuenta
rsconnect::setAccountInfo(
  name = 'ipf97', 
  token = '703446891E1F9AB8ADC6D6C463BD1B08', 
  secret = 'XfL+1yFMiDZASifGjyYIAc9XHd/4L3xZCMrkTKFC'
)

# Definir el nombre de la aplicación y la cuenta
app_name <- "StoryTellingApp"
account_name <- "ipf97"

# Desplegar la aplicación
rsconnect::deployApp(
  appDir = getwd(),
  appFiles = c("StoryTelling.Rmd", "hotel_bookings_1.csv"),
  appPrimaryDoc = "StoryTelling.Rmd",
  appName = app_name
)

# Construir la URL manualmente
app_url <- paste0("https://", account_name, ".shinyapps.io/", app_name)

# Mostrar la URL generada
cat("Visualización generada: ", app_url, "\n")
