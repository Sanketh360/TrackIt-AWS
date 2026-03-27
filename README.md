🚀 #TrackIt - Spring Boot AWS Deployment
🌐 Live Application

👉 http://ec2-65-2-9-60.ap-south-1.compute.amazonaws.com:9090/

📌 Project Overview

TrackIt is a Spring Boot-based Todo Application deployed on AWS using a fully automated CI/CD pipeline.

This project demonstrates real-world backend + DevOps integration, including containerization, cloud deployment, and database connectivity.

🏗️ Architecture
User → EC2 (Docker Container) → Spring Boot App → AWS RDS (MySQL)
🛠️ Tech Stack
Backend: Spring Boot (Java 21)
Database: AWS RDS (MySQL)
Containerization: Docker
Cloud Platform: AWS EC2
CI/CD: GitHub Actions
Build Tool: Maven
⚙️ Features
✅ REST API for Todo Management
✅ Dockerized Spring Boot Application
✅ Automated CI/CD Pipeline
✅ Secure Environment Variables (GitHub Secrets)
✅ Cloud Deployment on AWS EC2
✅ Database Integration with AWS RDS
🔄 CI/CD Pipeline Flow
Push Code → GitHub Actions →
Build JAR → Build Docker Image →
Push to Docker Hub →
SSH into EC2 →
Pull Image → Run Container
🔐 Environment Variables

Sensitive data is managed securely using GitHub Secrets:

SPRING_DATASOURCE_URL
SPRING_DATASOURCE_USERNAME
SPRING_DATASOURCE_PASSWORD
🐳 Docker Setup
Build Image
docker build -t sanketh1357/spring-boot-trackit:latest .
Run Container
docker run -d -p 9090:9090 \
  -e SPRING_DATASOURCE_URL=<DB_URL> \
  -e SPRING_DATASOURCE_USERNAME=<USERNAME> \
  -e SPRING_DATASOURCE_PASSWORD=<PASSWORD> \
  sanketh1357/spring-boot-trackit:latest
☁️ AWS Deployment
EC2 Instance used for hosting the application
RDS MySQL used as the database
Security Groups configured for:
Port 9090 (Application)
Port 3306 (Database)
📦 Project Structure
├── src/
├── Dockerfile
├── pom.xml
├── .github/workflows/
└── README.md
🚀 How to Run Locally
git clone https://github.com/Sanketh360/TrackIt-AWS.git
cd TrackIt-AWS
./mvnw clean package
java -jar target/*.jar
📈 Future Improvements
🔹 Add Frontend (React / Angular)
🔹 Add Nginx Reverse Proxy
🔹 Enable HTTPS (SSL)
🔹 Implement Monitoring (CloudWatch)
🔹 Zero-downtime Deployment
👨‍💻 Author

Sanketh Kottary

⭐ If you like this project

Give it a ⭐ on GitHub!
