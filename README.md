# URL Shortener with Load Balancer

This project implements a URL Shortener service using Snowflake ID to generate unique short URLs, stored in a PostgreSQL database. The system distributes requests across three separate servers using a custom load balancer built with Spring Boot.

## Description

- **Technology Stack**: 
  - Spring Boot
  - PostgreSQL
  - WebClient (for load balancing)
  - Snowflake ID (for generating unique short URLs)

- **Load Balancer**:
  The load balancer distributes requests equally across three running servers. If any server is down, the load balancer will automatically skip it and continue distributing requests to the available servers.

## How to Run

### Step 1: Clone the Repository

```bash
git clone https://github.com/HashemHammadeen/UrlShorter.git
cd UrlShorter
```
### Step 2: Configure the Database
1-Navigate to ```src/main/resources/``` and open the ```application.properties``` file for each of the three servers.
2-Update the PostgreSQL database configurations with your database credentials:

```
spring.datasource.url=jdbc:postgresql://your-database-host:5432/your-database-name

spring.datasource.username=your-username

spring.datasource.password=your-password
```
3-Repeat the above steps for all three servers, making sure they point to the same PostgreSQL database.

### Step 3:  Run the Servers
Open your text editor and run the servers or run these commands
```
# Run Server 1
mvn spring-boot:run -Dspring-boot.run.arguments=--server.port=8081

# Run Server 2
mvn spring-boot:run -Dspring-boot.run.arguments=--server.port=8082

# Run Server 3
mvn spring-boot:run -Dspring-boot.run.arguments=--server.port=8083
```
### Step 4: Run the Load Balancer
Open your text editor and run the balace loder or run this command

```
mvn spring-boot:run -Dspring-boot.run.arguments=--server.port=8080
```
### Step 5: Testing the URL Shortener
You can use postman for testing the servers but make sure you are sending requests for balance loder with it is on port 8080 or you can run the ```TestingScript``` , each server recive a request shoud print Server[serverNumber] it the terminal.

