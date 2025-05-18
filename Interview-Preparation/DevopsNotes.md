# 🌥️ Cloud Computing
Cloud computing means using the internet to access computing power, storage, and applications whenever you need them, instead of buying and maintaining physical servers. You only pay for what you use, just like paying for electricity or water. This makes it flexible and cost-effective for businesses and individuals.

---

## 🌎 AWS Global Infrastructure (Regions, AZs, Edge Locations)
AWS is a giant network of computers spread across the world. These computers are placed in different locations to make cloud services fast, reliable, and secure for people everywhere.

- **📍 Regions** – Big areas where AWS has a lot of computers. Each region has multiple Availability Zones (AZs) inside it.
- **🏢 Availability Zones (AZs)** – Groups of data centers inside a region. If one AZ faces a problem, the others keep things running smoothly.
- **📡 Edge Locations** – Small centers placed in many locations to deliver content quickly. They help websites and apps load faster by storing data closer to users.

---

## ⚙️ Service Models: IaaS, PaaS, and SaaS
- **🛠️ IaaS (Infrastructure as a Service)** – You get raw materials (servers, storage) to build things.
  - Example: AWS EC2, Microsoft Azure Virtual Machines.
  
- **🧰 PaaS (Platform as a Service)** – You get tools to build apps faster.
  - Example: Google App Engine, AWS Elastic Beanstalk.
  
- **📦 SaaS (Software as a Service)** – You get a ready-to-use app.
  - Example: Gmail, Dropbox, Microsoft 365.

---

## ☁️ Deployment Models: Public, Private, Hybrid Cloud
- **🌍 Public Cloud** – Services available to anyone over the internet. Managed by cloud providers like AWS, Microsoft Azure, Google Cloud.
  - Example: Google Drive, AWS S3, Microsoft OneDrive.
  
- **🏠 Private Cloud** – A cloud dedicated to one organization. Can be hosted on-premises or by a third-party provider.
  - Example: A bank or government agency managing its own cloud infrastructure.
  
- **🔄 Hybrid Cloud** – A mix of public and private clouds. Businesses use private clouds for sensitive data and public clouds for scalability.
  - Example: A company storing customer data securely in a private cloud but using a public cloud for running applications.

---

## 🔐 IAM (Identity and Access Management)
IAM helps organizations manage who can access their technology and resources securely. It ensures the right people have the right access to the right tools.

### 🏰 AWS IAM
AWS IAM is a service that lets you control access to AWS resources. It helps you manage:

- **🔑 Authentication** – Who can sign in.
- **✅ Authorization** – What actions they can perform.

### Key Components:
- **👤 Users** – Individual accounts with specific permissions (5,000 users per account).
- **👥 Groups** – A collection of users with shared permissions (300 groups per account).
- **🎭 Roles** – Temporary access permissions for users or applications (1,000 roles per account).
- **📜 Policies** – Rules that define what users, groups, or roles can do (10 policies per user and per role).
- **🆔 Access Key** – A unique identifier that allows a user or application to access AWS resources (2 per user).
- **🔑 Secret Key** – A private key that works with the access key to authenticate requests securely (2 per user).

---

## 🔧 AWS CLI & SDK Basics
- **💻 AWS CLI (Command Line Interface)** – Like a remote control for AWS! It lets you manage AWS services using typed commands instead of clicking around in a web browser.
- **📦 AWS SDK (Software Development Kit)** – Lets developers use AWS inside their own applications by using programming languages like Python, Java, and JavaScript.

---

## 🚀 Amazon EC2 (Elastic Compute Cloud)
### What is EC2?
Amazon EC2 provides virtual servers in the cloud to run applications.

### 🔧 How to Launch an Instance:
1. Choose an **Amazon Machine Image (AMI)** containing the OS and software configurations.
2. Select an **instance type** based on CPU, memory, storage, and networking requirements.
3. Configure **Security Groups** (firewall rules).
4. Set up **key pairs** for SSH access.

---

## 🔑 Key Pairs (Secure Authentication)
Key pairs are used for secure authentication when connecting to EC2 instances.

- **🔓 Public Key** – Stored by AWS.
- **🔑 Private Key** – Downloaded and used for secure login.

---

## 🖼️ Amazon Machine Images (AMIs)
AMIs are templates that define the OS and software for an EC2 instance.

You can:
- Use **AWS-provided AMIs**.
- Create **custom AMIs**.
- Share **AMIs with other AWS accounts**.

### 🖥️ How to Share an AMI with Another AWS Account

- Open the **EC2 Dashboard** → Click **"Images"** → **"AMIs"**  
- Find the AMI you want to share  
- Click **"Modify Image Permissions"**  
- Choose **"Private"** sharing  
- Enter the **AWS account ID** you want to share the AMI with  
- Click **"Save"**  
- The AMI is now accessible by the target AWS account  
- The receiving account can now **launch instances** from the shared AMI  
- They can **copy the AMI** to their own account if needed   

---

## 🛡️ Security Groups (Firewall Protection)
Security Groups function as virtual firewalls, controlling inbound and outbound traffic.

They:
- **✅ Allow or ❌ Deny** specific network traffic.
- **🔄 Are stateful**, meaning responses to allowed requests are automatically permitted.

---

## 🔄 Auto Scaling Groups
### Definition
Auto Scaling Groups in AWS automatically adjust the number of servers based on demand.

### 📌 Example
Imagine you run an online store. During sales, more people visit, and you need extra servers. Auto Scaling Groups add or remove servers dynamically, saving costs while keeping your site running smoothly.

---

## ⚖️ Load Balancers (ALB, NLB)
### Definition
Load Balancers distribute incoming traffic across multiple resources to ensure high availability and optimal performance.

### Types
- **🌐 Application Load Balancer (ALB)**
  - Operates at Layer 7 (HTTP/HTTPS).
  - Supports host-based and path-based routing.
  - Ideal for microservices.

- **🔗 Network Load Balancer (NLB)**
  - Operates at Layer 4 (TCP/UDP).
  - Handles high-performance, low-latency traffic.

### 🍽️ Example
Think of a restaurant with multiple chefs. If everyone orders from one chef, they get overwhelmed. Load Balancers distribute traffic across multiple servers, just like spreading orders among chefs.

---

## 🖥️ AWS Lambda (Serverless Functions)
### Definition
AWS Lambda lets you run code without managing servers. It executes only when triggered.

### ⚡ Example
Instead of running a server all the time, Lambda runs small functions on demand (like sending a confirmation email after a purchase). No server management—just instant execution.

---

## 🗄️ Storage Services in AWS
### 1️⃣ S3 (Simple Storage Service) 📂
Think of S3 as a massive online storage system where you can keep files, documents, images, and videos.

- **Buckets:** Like folders, used to organize files.
- **Objects:** The actual files stored.
- **Permissions:** Control who can access data.

### 2️⃣ EBS (Elastic Block Store) 💾
EBS works like a virtual hard drive for cloud servers.

- **Used for:** Databases, applications, high-speed workloads.
- **Snapshots:** Create backups easily.
- **Attach/detach:** Volumes for EC2 instances.

### 3️⃣ EFS (Elastic File System) 🗂️
EFS is shared storage that multiple EC2 instances can access at the same time.

- **Ideal for:** Content management, big data analytics, file sharing.
- **Scalable:** Automatically adjusts based on usage.

### 4️⃣ AWS Backup 🔄
A managed service that automates backups for AWS resources.

- **Centralized management.**
- **Scheduled backups & recovery.**
- **Prevents accidental data loss.**

---

## 🗃️ Database Services in AWS
### 1️⃣ RDS (Relational Database Service) 📊
Traditional database service that organizes data into structured tables.

- **Engines:** MySQL, PostgreSQL, SQL Server, Oracle.
- **AWS manages:** Setup, scaling, backups.
- **Used for:** Business apps, websites, transactional systems.

### 2️⃣ DynamoDB (NoSQL Database) ⚡
Unlike RDS, DynamoDB stores data in key-value pairs.

- **Super fast & scalable.**
- **Handles scaling automatically.**
- **Used for gaming, IoT, analytics.**

---

## 🌐 VPC (Virtual Private Cloud)
Imagine a VPC like your own private neighborhood in the cloud.

### Key Components
- **🚦 Subnets:** Different streets (public/private access).
- **🛣️ Route Tables:** Traffic rules for connectivity.
- **🌍 Internet Gateway:** Entry for internet access.
- **🔒 NAT Gateway:** Private resources access internet securely.

---

## 🛡️ Security Groups & NACLs
- **🛑 Security Groups:** Work like personal bodyguards for instances.
- **🚧 Network ACLs (NACLs):** Define security rules at the subnet level.

---

## 🔗 VPC Peering & Transit Gateway
- **🤝 VPC Peering:** Direct connection between private cloud networks.
- **🚙 Transit Gateway:** Central hub for connecting multiple VPCs.

---

## 🔐 VPN & Direct Connect
- **🔗 VPN (Virtual Private Network):** Secure tunnel between office and AWS VPC.
- **⚡ Direct Connect:** Private, high-speed fiber cable for fast cloud connectivity.

---

## 🌍 Route 53 (DNS Service)
Route 53 is like your phone’s contact list, mapping domain names to IP addresses.

- **🔄 Helps route traffic efficiently.**
- **📡 Manages DNS resolution globally.**

---
## 🛠️ Amazon CloudWatch – Keeping an Eye on Your AWS Resources  
Amazon CloudWatch is like a **smart watchdog** 🐶 that constantly monitors your AWS resources, telling you how they are performing. It includes:  

- **📜 Logs** – Think of logs like a diary 📖 where AWS services write down what happens. These logs help find errors or unusual activity.  
- **📊 Metrics** – Numbers 📈 that show how things are running, like CPU usage or memory consumption.  
- **⏰ Alarms** – Alerts 🚨 that notify you when something goes wrong, like high CPU usage on a server.  
- **📺 Dashboards** – A control panel 🖥️ where you can see everything in one place with charts and graphs.  

---

## 🔍 AWS CloudTrail – Recording What Happens in AWS  
CloudTrail is like a **security camera** 📷 for your AWS account. It records everything happening, like:  

- **👤 Who did what?** – Tracks actions taken by users, such as deleting files or launching servers.  
- **🔄 API calls** – Logs when AWS services are used.  
- **🛡️ Security checks** – Helps detect any suspicious activity.  

---

## ⚡ Why Are They Important Together?  
- **🟢 CloudWatch** helps track performance and health.  
- **🔴 CloudTrail** records activities for security and troubleshooting.  

---

## 🔑 AWS Key Management Service (KMS)  
AWS **KMS** is like a **digital safe** for your encryption keys. It helps keep your data **locked and secure** by:  

- **🔐 Creating encryption keys** to protect your files.  
- **🔓 Locking & unlocking data** so only authorized users can access it.  
- **⚙️ Automatically working** with AWS services like **S3, RDS, and Lambda** to secure data.  
- **🛡️ Controlling access** using security policies to limit who can use your keys.  

---

## 🔒 AWS Secrets Manager  
AWS **Secrets Manager** is like a **password manager** for AWS. It securely stores sensitive information, such as:  

- **🗝️ Passwords, API keys, and credentials** for databases and applications.  
- **🔄 Automatically rotating secrets** so passwords change periodically for better security.  
- **🔍 Helping applications retrieve secrets** without exposing them in code.  
- **⚠️ Controlling access** so only authorized users can see the secrets.  

---

## ✅ Why Use Them Together?  
- **KMS** encrypts and protects your data.  
- **Secrets Manager** keeps passwords and sensitive details safe.  

---

# 🚀 Amazon SQS & SNS Explained Simply  

## 🏷️ **Amazon SQS (Simple Queue Service)**  
Think of SQS like a **waiting line at a movie theater** 🎥🍿. Messages (tasks) arrive in the queue and wait for their turn to be processed. The system ensures messages don’t get lost, even if things get busy.  

### 🔹 **Key Features**  
- 🛠️ **Purpose:** Helps different parts of an application communicate without being directly connected.  
- 📩 **How it works:** Messages are placed in a queue 📬, and workers process them when they are ready.  
- 🛍️ **Example Use Case:** An **e-commerce website** 🛒 uses SQS to handle customer orders. When an order is placed, it goes into the queue, and the system processes it one by one.

![SQS Diagram](https://github.com/akash08-ak/AWS-Project-Setup/blob/main/Images/SQS.png)

### 📌 SQS Message Processing Flow
- A **user uploads a video** 🎥 to **Server A1 or A2**.
- The video is then **stored in Amazon S3** 🗄️.
- A **message is sent to the Amazon SQS queue** 📩.
- **Servers B1 and B2** 🔎 constantly monitor the queue.
- Once a message arrives, **one of the servers (B1 or B2) picks it up** to process the video.

---

### ⏳ **Visibility Timeout**
When **Server B1 picks up a message** for processing:
- That message **becomes invisible** ⛔ to other servers (such as B2) **for a set period** (Visibility Timeout).
- This **prevents duplicate processing** ⚠️ by multiple servers at the same time.
- If **B1 successfully processes the message**, ✅ it is **removed** from the queue.

---

### ❌ **Dead Letter Queue (DLQ)**
What happens if **Server B1 fails to process** the message?
1. ⏳ After the **visibility timeout** expires, the message becomes **visible again**, allowing **Server B2** to pick it up.
2. 🛑 If **both Server B1 and B2** fail multiple times ⏳, the message is **moved to the Dead Letter Queue (DLQ)**.
3. 🔎 DLQ stores **failed messages** for further investigation and troubleshooting 🛠️.

---

### 🔄 **Process Overview**
1️⃣ **User uploads a video** → 📤 Server A1/A2 → 🗄️ Stored in S3  
2️⃣ **Message added to SQS** 📩 → Servers B1 & B2 **watch** it  
3️⃣ **Processing starts** 🚀 → One server picks it up  
4️⃣ ✅ If processed successfully → **Message removed**  
5️⃣ ❌ If failed → **Visibility timeout ends** → Other server tries  
6️⃣ ❗ If failed multiple times → **Moved to DLQ for further debugging**


---

## 📢 **Amazon SNS (Simple Notification Service)**  
SNS is more like a **radio broadcast** 📡—it sends messages instantly to multiple people at once. If something important happens, SNS will alert multiple services or users.  

### 🔹 **Key Features**  
- 🚀 **Purpose:** Delivers messages instantly to multiple subscribers.  
- 🔔 **How it works:** One sender **publishes** a message, and all **subscribers** receive it.  
- ⛈️ **Example Use Case:** A **weather app** 🌦️ uses SNS to send alerts to users about severe storms.

---

## 🔍 Key Differences: SQS vs. SNS  

| 📌 Feature           | 🎟️ SQS (Queue)                      | 📡 SNS (Broadcast)           |
|----------------------|--------------------------------------|------------------------------|
| **Message Type**     | Stored and processed later ⏳       | Instant notification ⚡      |
| **Who Receives It?** | One system picks up each message 🎯 | Many receivers at once 📢    |
| **Best For**         | Handling tasks in order ✅          | Sending alerts or updates 🔥 |



