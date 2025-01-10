# Define paths to Java 21 and Maven commands
JAVA_HOME=/home/jky17-fiveoh/.sdkman/candidates/java/21.0.3-tem
MAVEN_EXEC=mvn

# Default target: build the project
.PHONY: build
build:
	@echo "Using JAVA_HOME=$(JAVA_HOME)"
	JAVA_HOME=$(JAVA_HOME) $(MAVEN_EXEC) clean install

# Run tests
.PHONY: test
test:
	@echo "Using JAVA_HOME=$(JAVA_HOME)"
	JAVA_HOME=$(JAVA_HOME) $(MAVEN_EXEC) test

# Run the application
.PHONY: run
run:
	@echo "Using JAVA_HOME=$(JAVA_HOME)"
	JAVA_HOME=$(JAVA_HOME) $(MAVEN_EXEC) exec:java

# Clean the project
.PHONY: clean
clean:
	@echo "Using JAVA_HOME=$(JAVA_HOME)"
	JAVA_HOME=$(JAVA_HOME) $(MAVEN_EXEC) clean
