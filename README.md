# ☁️ Cloud Infrastructure Monitoring System

A production-ready Cloud Infrastructure Monitoring System built using **Python Flask**, **AWS EC2**, **Terraform**, **Gunicorn**, and **Nginx**.
This project demonstrates Infrastructure as Code (IaC), cloud deployment, Linux server administration, reverse proxy configuration, and production deployment on AWS.

# 🚀 Project Overview

This project demonstrates:

- Infrastructure provisioning using Terraform
- AWS EC2 deployment
- Python Flask web application
- Linux server administration
- Gunicorn WSGI server
- Nginx Reverse Proxy
- Secure SSH access
- AWS Security Group configuration
- Public web application hosting
- Git & GitHub version control

# ✨ Features

- ✅ Infrastructure as Code (Terraform)
- ✅ AWS EC2 Deployment
- ✅ Python Flask Application
- ✅ Dynamic Dashboard
- ✅ Gunicorn Application Server
- ✅ Nginx Reverse Proxy
- ✅ Linux (Ubuntu) Server Configuration
- ✅ Secure SSH Access
- ✅ AWS Security Groups
- ✅ Production Deployment
- ✅ Public Application Hosting
- ✅ Git & GitHub Integration


# 🛠 Technologies Used

| Technology | Purpose |
|------------|---------|
| AWS EC2 | Cloud Virtual Machine |
| Terraform | Infrastructure as Code |
| Python Flask | Backend Web Application |
| HTML5 | Frontend |
| CSS3 | Styling |
| Gunicorn | WSGI Application Server |
| Nginx | Reverse Proxy Server |
| Ubuntu Linux | Operating System |
| Git | Version Control |
| GitHub | Source Code Repository |
| SSH | Secure Remote Access |

# 📁 Project Structure
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
│   ├── provider.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── docker/
│
├── jenkins/
│
├── LICENSE
└── README.md

# ⚙️ Prerequisites

- AWS Account
- AWS CLI
- Terraform
- Git
- Python 3
- Ubuntu EC2 Instance
- SSH Key Pair
# 🚀 Deployment Steps

## 1. Clone Repository
```bash
git clone https://github.com/vinayakgund07/cloud-infrastructure-monitoring-system.git
## 2. Navigate to Project

```bash
cd cloud-infrastructure-monitoring-system
## 3. Deploy Infrastructure

```bash
cd terraform

terraform init

terraform plan

terraform apply

## 4. Connect to EC2

```bash
ssh -i your-key.pem ubuntu@YOUR_PUBLIC_IP
```
## 5. Deploy Flask Application
```bash
cd app
pip install -r requirements.txt
python3 app.py
## 6. Configure Gunicorn
```bash
gunicorn --workers 2 --bind 127.0.0.1:5000 app:app
## 7. Configure Nginx Reverse Proxy
Configure Nginx to forward HTTP requests to Gunicorn running on localhost.
## 8. Start Services

```bash
sudo systemctl enable gunicorn
sudo systemctl start gunicorn
sudo systemctl restart nginx
## 🌐 Live Application
Application successfully deployed on AWS EC2.
Access:
http://YOUR_PUBLIC_IP

# 📚 Learning Outcomes
This project helped me learn:
- AWS EC2
- Infrastructure as Code (Terraform)
- Linux Administration
- Python Flask Deployment
- Gunicorn
- Nginx Reverse Proxy
- AWS Security Groups
- SSH Remote Access
- Production Deployment
- Git & GitHub

# 📊 Current Project Status

| Module | Status |
|---------|--------|
| Terraform | ✅ Completed |
| AWS EC2 | ✅ Completed |
| Flask Application | ✅ Completed |
| Gunicorn | ✅ Completed |
| Nginx | ✅ Completed |
| Linux Server | ✅ Completed |
| SSH | ✅ Completed |
| Security Groups | ✅ Completed |
| Public Deployment | ✅ Completed |

# 🔮 Future Enhancements

- Docker Containerization
- Jenkins CI/CD Pipeline
- Amazon CloudWatch Monitoring
- AWS Lambda Auto-Healing
- Amazon SNS Notifications
- Amazon S3 Storage
- Amazon ECR
- Amazon ECS Fargate
- Application Load Balancer
- Route 53
- HTTPS using AWS Certificate Manager
- Prometheus
- Grafana Dashboard
  
# 👨‍💻 Author
**Vinayak Gund**
📧 Email: vinayakgund33@gmail.com
🔗 GitHub: https://github.com/vinayakgund07
💼 LinkedIn: https://www.linkedin.com/in/vinayak-gund-8069a4289
# 📄 License
This project is licensed under the MIT License.
# ⭐ Support

If you found this project helpful, please give it a ⭐ on GitHub.
