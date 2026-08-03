<div align="center">

# 🏥 AWS Hospital Notification System

### Secure Patient Report Notification System using Terraform, Amazon VPC, EC2, IAM, Systems Manager & Amazon SNS

![AWS](https://img.shields.io/badge/AWS-Cloud-orange?style=for-the-badge&logo=amazonaws)
![Terraform](https://img.shields.io/badge/Terraform-IaC-purple?style=for-the-badge&logo=terraform)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-green?style=for-the-badge&logo=ubuntu)
![Amazon SNS](https://img.shields.io/badge/Amazon-SNS-red?style=for-the-badge&logo=amazonsimpleemailservice)
![EC2](https://img.shields.io/badge/Amazon-EC2-blue?style=for-the-badge&logo=amazonec2)
![IAM](https://img.shields.io/badge/AWS-IAM-yellow?style=for-the-badge&logo=amazonaws)

---

### 🚀 Secure AWS Infrastructure for Private Healthcare Notifications

Built with **Terraform** following **AWS Security Best Practices**

</div>

---

# 📑 Table of Contents

- [Project Overview](#-project-overview)
- [Problem Statement](#-problem-statement)
- [Project Objectives](#-project-objectives)
- [Solution Architecture](#-solution-architecture)
- [AWS Services Used](#-aws-services-used)
- [Project Features](#-project-features)
- [Folder Structure](#-folder-structure)
- [Infrastructure Workflow](#-infrastructure-workflow)
- [Architecture Diagram](#-architecture-diagram)
- [Deployment Guide](#-deployment-guide)
- [Screenshots](#-screenshots)
- [Security Implementation](#-security-implementation)
- [Testing & Validation](#-testing--validation)
- [Future Improvements](#-future-improvements)
- [Author](#-author)

---

# 📖 Project Overview

Healthcare organizations handle sensitive patient records that must be delivered securely to patients.

This project demonstrates how to deploy a **secure AWS infrastructure** where a hospital application running on an **Amazon EC2 instance inside a private subnet** sends patient report notifications using **Amazon SNS**.

The infrastructure is completely isolated inside a custom Amazon VPC and follows AWS networking and security best practices.

The complete infrastructure is provisioned using **Terraform**.

---

# ❗ Problem Statement

The objective of this project is to securely publish patient report notifications from a private AWS infrastructure while ensuring that patient data is not exposed over the public internet.

Patients receive notifications whenever their reports become available.

## Problem Statement

![Problem Statement](screenshots/01-problem-statement.png)

---

# 🎯 Project Objectives

✔ Build a custom Amazon VPC

✔ Deploy EC2 in a Private Subnet

✔ Configure Internet Gateway & NAT Gateway

✔ Implement Secure Routing

✔ Configure IAM Role Authentication

✔ Access EC2 using Systems Manager Session Manager

✔ Install AWS CLI inside Private EC2

✔ Create Amazon SNS Topic

✔ Subscribe Patient Email

✔ Publish Notifications Securely

✔ Receive Email Notifications Successfully

✔ Provision Infrastructure using Terraform

---

# ☁ AWS Services Used

| AWS Service | Purpose |
|-------------|---------|
| Amazon VPC | Create isolated network |
| Public Subnet | Host NAT Gateway |
| Private Subnet | Secure EC2 Deployment |
| Internet Gateway | Internet connectivity |
| NAT Gateway | Outbound internet for private subnet |
| Route Tables | Network routing |
| Security Groups | Firewall |
| Amazon EC2 | Hospital Application Server |
| IAM Role | Secure AWS Authentication |
| AWS Systems Manager | Secure EC2 Access |
| Amazon SNS | Email Notification |
| Terraform | Infrastructure as Code |

---

# ⭐ Project Features

## Networking

- Custom VPC
- Public Subnet
- Private Subnet
- Internet Gateway
- NAT Gateway
- Route Tables

---

## Security

- Private EC2 Instance
- No Public IP
- IAM Role Authentication
- Session Manager
- Security Groups
- Least Privilege Access

---

## Notification

- Amazon SNS Topic
- Email Subscription
- Secure Notification Delivery

---

## Infrastructure as Code

- Terraform
- Modular Configuration
- Variables
- Outputs

---

# 📂 Folder Structure

```text
AWS-Hospital-Notification-System
│
├── terraform/
│   ├── provider.tf
│   ├── variables.tf
│   ├── vpc.tf
│   ├── subnet.tf
│   ├── route.tf
│   ├── securitygroup.tf
│   ├── iam.tf
│   ├── ec2.tf
│   ├── sns.tf
│   ├── outputs.tf
│
├── screenshots/
│
├── diagrams/
│
├── README.md
│
└── .gitignore
```

Project Folder

![Project Structure](screenshots/10-project-structure.png)

---

# 🔄 Infrastructure Workflow

```text
                    Patient Report Generated
                               │
                               ▼
                    Hospital Application
                               │
                               ▼
                 Amazon EC2 (Private Subnet)
                               │
                               ▼
                      IAM Role Authentication
                               │
                               ▼
                       Amazon SNS Topic
                               │
                               ▼
                      Email Notification
                               │
                               ▼
                            Patient
```

---

# 🏗 Solution Architecture

The infrastructure follows AWS recommended networking architecture.

- Internet Gateway provides internet access.
- NAT Gateway allows outbound connectivity.
- EC2 remains inside a Private Subnet.
- IAM Role securely authenticates AWS API requests.
- Systems Manager provides secure terminal access.
- Amazon SNS delivers patient notifications.
