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

# Verifico que los archivos existan en el directorio
setwd("C:/Users/Suaton-pc/Documents/PEC3_VISUALIZACION")
print(list.files())

# Desplegar la aplicación
rsconnect::deployApp(
  appDir = getwd(),
  appFiles = c("StoryTelling.Rmd", "hotel_bookings_1.csv"),
  appPrimaryDoc = "StoryTelling.Rmd",
  appName = app_name
)
