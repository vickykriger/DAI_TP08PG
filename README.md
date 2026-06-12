poner en el .env para que se ejecute:
LOG_FILE_PATH           = "./" 
LOG_FILE_NAME           = "archivo.log" 
LOG_TO_FILE_ENABLED     = "true" 
LOG_TO_CONSOLE_ENABLED  = "true" 
En pg admin, crear una base de datos llamada "dai_events", y después copiar el archivo dai_events.sql en la herramienta de query y ejecutarlo. En la terminal de vsCode, ejecutar npm i, y despues ejecutar npm start y podes probar los diferentes puertos que estan en el index.js