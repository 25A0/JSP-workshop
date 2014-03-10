PORT = 8080

all: run

run:
	mvn -Dmaven.tomcat.port=$(PORT) tomcat7:run

.PHONY: all run
