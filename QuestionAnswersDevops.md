# DevOps Expertise Summary 🚀

## Azure ☁️

- **CI/CD Automation**: Configured Azure Pipelines for streamlined build and deployment processes.
- **Security Integration**: Integrated SAST, DAST, and OSS scans into Azure Pipelines for vulnerability detection.
- **Artifact & Configuration Management**: Used different agents and shared paths to manage XML files and artifacts.
- **Deployments**: Deployed applications on Azure servers with scalability and performance in mind.

---

## AWS ☁️

- **Services Proficiency**: Worked with custom AMIs, IAM, and VPC configuration.
- **CI/CD with Jenkins**: Built and managed Jenkins pipelines for automation.
- **Code Quality**: Integrated SonarQube for automated code quality checks.
- **Containerization & Orchestration**: Used Docker and deployed containers to Kubernetes (Amazon EKS).
- **Artifact Management**: Configured Nexus repositories for secure storage and dependency management.

---

# Interview Cheat Sheet 📋

### 1. IAM Roles and Policies 🔐  
IAM roles let AWS services securely interact with each other. I created a role with S3 access and attached it to EC2, so it could upload files without access keys. Policies followed least privilege.

---

### 2. On-Premise Storage 🖴  
On-prem storage refers to local servers. I connected it to AWS using Storage Gateway, enabling backup of critical files to S3 while keeping the primary data on-premises.

---

### 3. Kubernetes Storage 📦  
I used EBS for single-pod storage like databases, and EFS when multiple pods needed shared access. For external backups or logs, I used S3 via APIs.

---

### 4. S3 Bucket Upload 🪣  
In CI/CD pipelines, I used the AWS CLI to upload artifacts or test reports to S3. It's scalable, secure, and easy to automate.

---

### 5. CloudWatch Metrics 📊  
I used CloudWatch to monitor EC2, RDS, and Lambda metrics. Set alarms for CPU spikes and created dashboards for real-time insights.

---

### 6. Kubernetes Structure and Services 🧱  
I structured apps using Deployments, Services, and Ingress. Services exposed my pods internally and externally, while Ingress managed routing with path rules.

---

### 7. Terraform ⚙️  
I provisioned AWS infrastructure using Terraform. For example, I created EC2, VPC, and S3 using `.tf` files, making the process repeatable and version-controlled.

---

### 8. Ansible 🛠️  
I used Ansible to automate server setup like Docker installation and app deployment. It helped maintain consistency across environments using playbooks.

---

### 9. Storage Types 💾  
- **EBS**: Persistent, single-node block storage.  
- **EFS**: Shared file storage across pods.  
- **S3**: Object storage for logs, backups, and artifacts.

---

### 10. Kubernetes ⚙️  
Kubernetes helped me deploy, scale, and manage containerized apps. I configured Deployments, Services, ConfigMaps, and autoscaling with HPA.

---

### 11. Docker 🐳  
I containerized apps with Docker using custom Dockerfiles. Built images were stored in ECR and deployed to EKS for consistent, scalable runtime environments.

---

### 12. SonarQube 🧪  
I integrated SonarQube in Jenkins pipelines for code analysis. It helped enforce coding standards and catch bugs or security issues before deployment.

---

### 13. OWASP Dependency-Check 🛡️  
I added OWASP Dependency-Check in CI/CD to scan for vulnerabilities in open-source libraries. Reports were generated automatically after builds.

---

### 14. SQS 📬  
I used SQS to decouple microservices. The producer sent messages to the queue, and the consumer processed them independently, improving reliability and scalability.

---

### 15. SNS 📢  
SNS was used to send alerts and notifications. For example, I integrated it with CloudWatch alarms to notify the team via email when a server crossed threshold limits.

---