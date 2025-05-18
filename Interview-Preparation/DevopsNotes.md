## 1. What is Cloud Computing?
Cloud computing means using the internet to access computing power, storage, and applications whenever you need them, instead of buying and maintaining physical servers. You only pay for what you use, just like paying for electricity or water. This makes it flexible and cost-effective for businesses and individuals.

## 2. What is AWS Global Infrastructure? (Regions, AZs, Edge Locations)
AWS is a **giant network of computers** spread across the world. These computers are placed in different locations to make cloud services **fast, reliable, and secure** for people everywhere.

- **Regions** – Big areas where AWS has a lot of computers. Each region has multiple **Availability Zones (AZs)** inside it.
- **Availability Zones (AZs)** – Groups of **data centers** inside a region. If one AZ faces a problem, the others keep things running smoothly.
- **Edge Locations** – Small centers placed in many locations to **deliver content quickly**. They help websites and apps load faster by **storing data closer to users**.

## 3. What are IaaS, PaaS, and SaaS? (Service Models)
- **IaaS (Infrastructure as a Service)** – You get raw materials (**servers, storage**) to build things.  
  *Example:* AWS EC2, Microsoft Azure Virtual Machines.

- **PaaS (Platform as a Service)** – You get **tools to build apps faster**.  
  *Example:* Google App Engine, AWS Elastic Beanstalk.

- **SaaS (Software as a Service)** – You get a **ready-to-use app**.  
  *Example:* Gmail, Dropbox, Microsoft 365.

## 4. What are Public, Private, and Hybrid Clouds? (Deployment Models)
- **Public Cloud** – Services available to **anyone** over the internet. Managed by cloud providers like **AWS, Microsoft Azure, Google Cloud**.  
  *Example:* Google Drive, AWS S3, Microsoft OneDrive.

- **Private Cloud** – A cloud **dedicated to one organization**. Can be hosted **on-premises** or by a third-party provider.  
  *Example:* A bank or government agency managing its own cloud infrastructure.

- **Hybrid Cloud** – A mix of **public and private clouds**. Businesses use **private clouds for sensitive data** and **public clouds for scalability**.  
  *Example:* A company storing customer data securely in a private cloud but using a public cloud for running applications.

## 5. What is IAM (Identity and Access Management)?
IAM helps **organizations manage who can access their technology** and resources securely. It ensures the **right people have the right access** to the right tools.

### AWS IAM
AWS IAM is a service that lets you **control access to AWS resources**. It helps you manage:
- **Who can sign in** (*authentication*)
- **What actions they can perform** (*authorization*)

### Key Components:
1. **Users** – Individual accounts with specific permissions (**5,000 users per account**).
2. **Groups** – A collection of users with shared permissions (**300 groups per account**).
3. **Roles** – Temporary access permissions for users or applications (**1,000 roles per account**).
4. **Policies** – Rules that define what users, groups, or roles can do (**10 policies per user and per role**).
5. **Access Key** – A unique identifier that allows a user or application to access AWS resources (**2 per user**).
6. **Secret Key** – A private key that works with the access key to authenticate requests securely (**2 per user**).

## 6. What are AWS CLI & SDK Basics?

### AWS CLI (Command Line Interface)
- **Like a remote control for AWS** – It lets you manage AWS services using **typed commands** instead of clicking around in a web browser.
- You type commands in a **terminal**, and AWS follows your instructions.

### AWS SDK (Software Development Kit)
- AWS SDK **lets developers use AWS inside their own applications**.
- Instead of typing commands, developers can use programming languages like **Python, Java, and JavaScript** to interact with AWS.

---

### 7. What is EC2 (Elastic Compute Cloud)?

#### **Definition**  
Amazon EC2 provides **virtual servers in the cloud** to run applications.

#### **How to Launch an Instance**
1. Choose an **Amazon Machine Image (AMI)** containing the OS and software configurations.
2. Select an **instance type** based on CPU, memory, storage, and networking requirements.
3. Configure **Security Groups** (firewall rules).
4. Set up **key pairs** for SSH access.

---

### 8. What are Key Pairs?
Key pairs are used for secure authentication when connecting to EC2 instances.

- **Public Key** – Stored by AWS.
- **Private Key** – Downloaded and used for secure login.

---

### 9. What are Amazon Machine Images (AMIs)?
AMIs are templates that define the OS and software for an EC2 instance.

You can:
1. Use **AWS-provided AMIs**.
2. Create **custom AMIs**.
3. Share AMIs **with other AWS accounts**.

---

### 10. What are Security Groups?
Security Groups function as **virtual firewalls**, controlling inbound and outbound traffic.

They:
1. **Allow or deny** specific network traffic.
2. Are **stateful**, meaning responses to allowed requests are automatically permitted.

---

### 11. What is Auto Scaling Groups?

#### **Definition**  
Auto Scaling Groups in AWS **automatically adjust** the number of servers based on demand.

#### **Example**  
Imagine you run an online store. During sales, more people visit, and you need extra servers. **Auto Scaling Groups** add or remove servers dynamically, saving costs while keeping your site running smoothly.

---

### 12. What are Load Balancers (ALB, NLB)?

#### **Definition**  
Load Balancers distribute incoming traffic across multiple resources to ensure **high availability and optimal performance**.

#### **Types**
1. **Application Load Balancer (ALB)**  
   - Operates at **Layer 7 (HTTP/HTTPS)**.
   - Supports **host-based and path-based routing**.
   - Ideal for **microservices**.

2. **Network Load Balancer (NLB)**  
   - Operates at **Layer 4 (TCP/UDP)**.
   - Handles **high-performance, low-latency traffic**.

#### **Example**  
Think of a restaurant with multiple chefs. If everyone orders from one chef, they get overwhelmed. **Load Balancers** distribute traffic across multiple servers, just like spreading orders among chefs.

---

### 13. What is Lambda (Serverless Functions)?

#### **Definition**  
AWS Lambda lets you run **code without managing servers**. It executes only **when triggered**.

#### **Example**  
Instead of running a server all the time, **Lambda** runs small functions on demand (like sending a confirmation email after a purchase). No server management—just instant execution.

---

## 14. What are Storage Services in AWS?

### 1. S3 (Simple Storage Service)
Think of S3 as a massive online storage system where you can keep files, documents, images, and videos. It's highly scalable, meaning you can store as much data as you need without worrying about running out of space.

- **Buckets:** Like folders, buckets help you organize your files.
- **Objects:** The actual files you store in S3 are called objects.
- **Permissions:** You control who can access your data, whether it's private, shared, or public.

### 2. EBS (Elastic Block Store)
EBS works like a virtual hard drive for your cloud servers. If you're running an EC2 instance (a cloud-based computer), EBS lets you store files persistently. Even if you turn off your instance, the data remains safe.

- Used for databases, applications, and high-speed workloads.
- Supports snapshots, meaning you can create backups of your storage.
- You can attach or detach volumes from EC2 instances as needed.

### 3. EFS (Elastic File System)
EFS is shared storage, like a network drive that multiple computers (EC2 instances) can access at the same time.

- Perfect for applications that need shared access.
- Automatically scales based on usage—no need to manage storage capacity.
- Great for content management systems, big data analytics, and file sharing.

### 4. AWS Backup
A managed service that automates backups for your AWS resources like databases, storage, and applications.

- Centralized backup management.
- Supports scheduled backups and recovery options.
- Helps prevent data loss from accidental deletions or failures.

---

## 15. What are Database Services in AWS?

### 1. RDS (Relational Database Service)
RDS is a traditional database service that organizes data into tables with rows and columns. Think of it like an Excel spreadsheet but much more powerful.

- Supports different database engines like **MySQL, PostgreSQL, SQL Server, and Oracle**.
- AWS manages tasks like **setup, backups, patching, and scaling** automatically.
- Ideal for business applications, websites, and transactional systems.

### 2. DynamoDB (NoSQL Database)
Unlike RDS, DynamoDB is a NoSQL database that stores data in **key-value pairs** instead of tables.

- Super fast and scalable—great for apps that need quick data retrieval.
- Automatically handles scaling without downtime.
- Commonly used for gaming apps, IoT devices, and real-time analytics.


