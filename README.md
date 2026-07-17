# ☁️ Cloud Infrastructure Monitoring System

A cloud infrastructure project that demonstrates how to deploy a Python Flask web application on **Amazon EC2** using **Terraform** for Infrastructure as Code (IaC). This project focuses on cloud deployment, infrastructure provisioning, Linux server administration, and secure AWS networking.

The project is designed as a foundation for learning AWS Cloud and DevOps practices and can be extended with CI/CD pipelines, monitoring, and containerization.

---

## 🚀 Project Overview

This project demonstrates:

- Infrastructure provisioning using Terraform
- AWS EC2 instance deployment
- Flask web application hosting
- Linux server configuration
- Secure SSH access
- AWS Security Group configuration
- Public application deployment on AWS

---

## ✨ Features

- ✅ Infrastructure as Code (Terraform)
- ✅ AWS EC2 Deployment
- ✅ Python Flask Web Application
- ✅ Linux (Ubuntu) Server Setup
- ✅ Secure SSH Configuration
- ✅ AWS Security Groups
- ✅ Public Web Application Hosting
- ✅ Git & GitHub Version Control

---

## 🛠️ Technologies Used

| Technology | Purpose |
|------------|---------|
| AWS EC2 | Cloud Virtual Machine |
| Terraform | Infrastructure as Code |
| Python (Flask) | Backend Application |
| HTML & CSS | Frontend UI |
| Linux (Ubuntu) | Server Operating System |
| Git | Version Control |
| GitHub | Source Code Repository |
| SSH | Secure Remote Access |

---

## 📁 Project Structure

```
cloud-infrastructure-monitoring-system/
│
├── app/
│   ├── app.py
│   ├── requirements.txt
│   ├── templates/
│   └── static/
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── provider.tf
│
├── docker/
│
├── jenkins/
│
├── lambda/
│
├── LICENSE
└── README.md
```

---

## ⚙️ Prerequisites

Before starting, make sure you have:

- AWS Account
- AWS CLI configured
- Terraform installed
- Git installed
- Python 3.x installed
- SSH Key Pair
- Ubuntu EC2 Instance

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/vinayakgund07/cloud-infrastructure-monitoring-system.git
```

### 2. Navigate to Project

```bash
cd cloud-infrastructure-monitoring-system
```

### 3. Deploy Infrastructure

```bash
cd terraform

terraform init

terraform plan

terraform apply
```

### 4. Connect to EC2

```bash
ssh -i your-key.pem ubuntu@YOUR_PUBLIC_IP
```

### 5. Deploy Flask Application

```bash
cd app

pip install -r requirements.txt

python3 app.py
```

### 6. Access the Application

```
http://YOUR_PUBLIC_IP:5000
```

---

## 📸 Project Screenshots

Add screenshots here after deployment.

Example:

- AWS EC2 Dashboard
- Terraform Apply Output
- Flask Application Running
- Security Group Configuration
- Website Homepage

---

## 📚 Learning Outcomes

This project helped me understand:

- AWS Cloud Infrastructure
- EC2 Instance Management
- Infrastructure as Code (Terraform)
- Linux Administration
- SSH Remote Access
- Security Group Configuration
- Python Flask Deployment
- Git & GitHub Workflow

---

## 🔮 Future Improvements

The following features are planned for future versions:

- Docker Containerization
- Jenkins CI/CD Pipeline
- Amazon CloudWatch Monitoring
- AWS Lambda Auto-Healing
- Amazon SNS Email Notifications
- Amazon S3 Storage
- Amazon ECR
- Amazon ECS Fargate
- Application Load Balancer (ALB)
- Route 53
- HTTPS using AWS Certificate Manager (ACM)
- Grafana Dashboard
- Prometheus Monitoring

## 📌 Project Status

**Current Version:** v1.0

**Status:** ✅ Successfully deployed on AWS EC2

# 👨‍💻 Author

**Vinayak Gund**

📧 Email: vinayakgund33@gmail.com

🔗 GitHub: https://github.com/vinayakgund07

💼 LinkedIn: https://www.linkedin.com/in/vinayak-gund-8069a4289

📄 License

This project is licensed under the **MIT License**.

⭐ Support

If you found this project useful, consider giving it a **⭐ Star** on GitHub.

It helps motivate future improvements and new cloud projects.
