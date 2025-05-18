# AWS Fundamentals

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

# Core AWS Services

## Compute

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

