#1 Base image (OS)

FROM eclipse-temurin:17-jdk

#2 working directory for the application
WORKDIR /app


#3 code to create the app
COPY src/Main.java /app/Main.java

COPY  quotes.txt quotes.txt
 
#4 copy . . if copy all things source --- destination

#5 Run the commands to install libs or to compile code 

RUN javac Main.java


#6 EXPOSE the port 

EXPOSE 8000

#6 Serve the app /keep it running

CMD ["java" ,"Main"] 
