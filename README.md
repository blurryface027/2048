# 🚀 AWS CI/CD Pipeline for Containerized Web Application

> An end-to-end DevOps project demonstrating automated containerized application deployment on AWS using GitHub, CodePipeline, CodeBuild, Amazon ECR, Amazon ECS (Fargate), and Application Load Balancer.

![AWS](https://img.shields.io/badge/AWS-Cloud-orange)
![Docker](https://img.shields.io/badge/Docker-Container-blue)
![GitHub](https://img.shields.io/badge/GitHub-CI/CD-black)
![ECS](https://img.shields.io/badge/Amazon-ECS-green)
![Fargate](https://img.shields.io/badge/Fargate-Serverless-blue)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

---

# 📖 Overview

This project demonstrates a complete CI/CD pipeline for deploying a Dockerized web application on AWS.

Whenever new code is pushed to the GitHub repository, AWS CodePipeline automatically triggers a build process. AWS CodeBuild creates a Docker image, pushes it to Amazon Elastic Container Registry (ECR), and Amazon ECS Fargate deploys the latest version of the application behind an Application Load Balancer (ALB).

The sample application used in this project is the open-source **2048 Game** by **Gabriele Cirulli**, while the complete containerization, AWS infrastructure, and CI/CD implementation were designed and configured by me.

---

# 🎯 Project Objectives

- Automate application deployment
- Implement Continuous Integration and Continuous Deployment (CI/CD)
- Containerize the application using Docker
- Deploy containers on Amazon ECS Fargate
- Store container images securely in Amazon ECR
- Eliminate manual deployment
- Demonstrate production-style DevOps workflow

---

# 🏗 Architecture

```

Developer
│
▼
GitHub Repository
│
▼
AWS CodePipeline
│
▼
AWS CodeBuild
│
▼
Docker Image Build
│
▼
Amazon Elastic Container Registry (ECR)
│
▼
Amazon ECS (Fargate)
│
▼
Application Load Balancer
│
▼
End Users

```

---

# ⚙️ Tech Stack

## Cloud

- Amazon Web Services (AWS)

## AWS Services

- CodePipeline
- CodeBuild
- Elastic Container Registry (ECR)
- Elastic Container Service (ECS)
- AWS Fargate
- Application Load Balancer (ALB)
- IAM
- CloudWatch
- VPC
- Security Groups

## DevOps

- Docker
- CI/CD
- Git
- GitHub

## Web

- HTML
- CSS
- JavaScript
- Nginx

---

# 📂 Project Structure

```

.
├── app/
│   ├── index.html
│   ├── style.css
│   ├── application.js
│   └── assets/
│
├── Dockerfile
├── buildspec.yml
├── .dockerignore
└── README.md

```

---

# 🔄 CI/CD Workflow

## 1. Developer pushes code

```

git add .
git commit -m "Update application"
git push origin master

```

↓

## 2. GitHub detects new commit

↓

## 3. AWS CodePipeline starts automatically

↓

## 4. CodeBuild executes

- Downloads source code
- Reads Dockerfile
- Builds Docker image
- Tags image
- Pushes image to Amazon ECR

↓

## 5. Amazon ECR

Stores the latest Docker image.

↓

## 6. Amazon ECS

Pulls the latest Docker image.

↓

## 7. ECS Service

Deploys new container using Fargate.

↓

## 8. Application Load Balancer

Routes traffic to healthy containers.

↓

## 9. Updated application becomes live.

---

# 🐳 Docker

The application is containerized using Docker.

Docker ensures consistent deployment across different environments.

Docker is responsible for

- Packaging application
- Packaging dependencies
- Creating Docker Image
- Running application inside container

---

# 📦 Amazon ECR

Amazon Elastic Container Registry stores Docker images securely.

In this project it is used to

- Store versioned Docker images
- Allow ECS to pull latest images
- Maintain deployment artifacts

---

# ☁ Amazon ECS (Fargate)

Amazon ECS is responsible for running containers.

AWS Fargate removes the need to manage EC2 instances.

Responsibilities

- Run containers
- Replace failed containers
- Maintain desired task count
- Perform rolling deployments

---

# ⚖️ Application Load Balancer

The Application Load Balancer provides

- Public endpoint
- Load balancing
- Health checks
- Traffic routing

---

# 🔐 IAM

IAM Roles provide secure communication between AWS services.

Examples

- CodeBuild → Push image to ECR
- ECS → Pull image from ECR
- CodePipeline → Trigger CodeBuild

No AWS credentials are stored inside the application.

---

# 🌐 Networking

Resources used

- Amazon VPC
- Public Subnets
- Security Groups
- Internet Gateway

Traffic Flow

```

Browser

↓

Application Load Balancer

↓

Target Group

↓

Amazon ECS

↓

Docker Container

↓

Nginx

↓

2048 Application

```

---

# 🚀 Deployment Process

```

Git Push

↓

CodePipeline

↓

CodeBuild

↓

Docker Build

↓

Docker Push

↓

Amazon ECR

↓

Amazon ECS

↓

Fargate

↓

Application Load Balancer

↓

Production

```

---

# 📈 Features

- Automated CI/CD Pipeline
- Dockerized Application
- Zero Manual Deployment
- AWS Native Deployment
- Serverless Container Hosting
- Production Style Architecture
- Infrastructure Security
- Health Monitoring
- Scalable Deployment

---

# 📚 Skills Demonstrated

- AWS Cloud
- Docker
- CI/CD
- GitHub
- Amazon ECS
- Amazon ECR
- AWS Fargate
- CodePipeline
- CodeBuild
- IAM
- Cloud Networking
- Load Balancing
- Container Deployment

---

# 🧠 Learning Outcomes

Through this project I gained hands-on experience with

- Docker containerization
- Continuous Integration
- Continuous Deployment
- Container orchestration
- AWS container services
- IAM permissions
- Cloud networking
- Automated deployments
- DevOps best practices

---

# 🔮 Future Improvements

- HTTPS using ACM
- Route53 custom domain
- Auto Scaling
- Blue/Green Deployments
- Terraform Infrastructure as Code
- Monitoring with Prometheus & Grafana
- AWS CloudWatch Alarms

---

# 📷 Screenshots

You can add screenshots of

- AWS CodePipeline
- CodeBuild
- Amazon ECR
- ECS Cluster
- ECS Service
- Task Definition
- Application Load Balancer
- Running 2048 Application

---

# 🙏 Acknowledgements

The sample application used in this repository is the open-source **2048** game created by **Gabriele Cirulli** and licensed under the MIT License.

Repository:
https://github.com/gabrielecirulli/2048

The Dockerization, AWS infrastructure setup, CI/CD pipeline implementation, deployment automation, and cloud architecture were implemented by me for learning and demonstration purposes.

---

# 👨‍💻 Author

**Krishan Mohan Sharma**

GitHub: https://github.com/blurryface027

LinkedIn: https://linkedin.com/in/blurryface027

Portfolio: https://kopscloud.in

Note: This project uses the open-source 2048 game by Gabriele Cirulli (MIT License). The application source code is from the original repository, while the Dockerization, AWS infrastructure, CI/CD pipeline, and deployment automation were implemented by me.
