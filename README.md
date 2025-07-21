# TechEazy DevOps - Automated EC2 Deployment

This project automates the setup and deployment of a Spring Boot-based DevOps application on an AWS EC2 instance using Bash scripting.

## 🚀 Project Overview

This repository includes a complete automation script to:

- Launch an EC2 instance
- Install required dependencies (Java 21, Git)
- Clone the application from GitHub
- Build and run the Spring Boot application
- Expose it on a custom port
- Manage deployment via cron (optional)

## 📁 Directory Structure

.
├── deploy.sh # Bash script to automate EC2 deployment
├── techeazy-devops/ # Spring Boot application directory
│ ├── src/ # Java source files
│ └── target/ # Compiled JAR file after build
├── README.md # Project documentation

pgsql
Copy
Edit

## 🔧 Prerequisites

- AWS Free Tier account
- IAM user with EC2 full access
- Key pair for SSH access
- GitHub account and this repo cloned

## 🛠️ Installation & Usage

1. **Connect to your EC2 instance:**
   ```bash
   ssh -i your-key.pem ec2-user@<your-ec2-public-ip>
Clone this repository:

bash
Copy
Edit
git clone https://github.com/Ashutosh-9216/tech_eazy_devops_Ashutosh-9216.git
cd tech_eazy_devops_Ashutosh-9216
Run the deploy script:

bash
Copy
Edit
chmod +x deploy.sh
./deploy.sh dev
Replace dev with your desired environment name (prod, stage, etc.).

Access the app:
Visit: http://<ec2-public-ip>:8080/

📌 Technologies Used
AWS EC2

Bash Scripting

Java 21 (Spring Boot)

Git & GitHub

Crontab (optional deployment scheduling)


