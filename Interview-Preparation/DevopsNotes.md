# AWS Fundamentals

## 1. What is Cloud Computing?
Cloud computing means using the internet to access computing power, storage, and applications whenever you need them, instead of buying and maintaining physical servers. You only pay for what you use, just like paying for electricity or water. This makes it flexible and cost-effective for businesses and individuals.

## 2. AWS Global Infrastructure (Regions, AZs, Edge Locations)
AWS is a **giant network of computers** spread across the world. These computers are placed in different locations to make cloud services **fast, reliable, and secure** for people everywhere.

- **Regions** – Big areas where AWS has a lot of computers. Each region has multiple **Availability Zones (AZs)** inside it.
- **Availability Zones (AZs)** – Groups of **data centers** inside a region. If one AZ faces a problem, the others keep things running smoothly.
- **Edge Locations** – Small centers placed in many locations to **deliver content quickly**. They help websites and apps load faster by **storing data closer to users**.

## 3. What is IaaS, PaaS, SaaS? (Service Models)
- **IaaS (Infrastructure as a Service)** – You get raw materials (**servers, storage**) to build things.  
  *Example:* AWS EC2, Microsoft Azure Virtual Machines.

- **PaaS (Platform as a Service)** – You get **tools to build apps faster**.  
  *Example:* Google App Engine, AWS Elastic Beanstalk.

- **SaaS (Software as a Service)** – You get a **ready-to-use app**.  
  *Example:* Gmail, Dropbox, Microsoft 365.

## 4. What is Public Cloud, Private Cloud, Hybrid Cloud? (Deployment Models)
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
- **Users** – Individual accounts with specific permissions (**5,000 users per account**).
- **Groups** – A collection of users with shared permissions (**300 groups per account**).
- **Roles** – Temporary access permissions for users or applications (**1,000 roles per account**).
- **Policies** – Rules that define what users, groups, or roles can do (**10 policies per user and per role**).
- **Access Key** – A unique identifier that allows a user or application to access AWS resources (**2 per user**).
- **Secret Key** – A private key that works with the access key to authenticate requests securely (**2 per user**).

## 6. AWS CLI & SDK Basics

### AWS CLI (Command Line Interface)
- **Like a remote control for AWS** – It lets you manage AWS services using **typed commands** instead of clicking around in a web browser.
- You type commands in a **terminal**, and AWS follows your instructions.

### AWS SDK (Software Development Kit)
- AWS SDK **lets developers use AWS inside their own applications**.
- Instead of typing commands, developers can use programming languages like **Python, Java, and JavaScript** to interact with AWS.





# Core AWS Services

## Compute

### **What is EC2 (Elastic Compute Cloud)?**

#### **1. Launching Instances**  
An EC2 instance is essentially a virtual server in AWS. To launch one, you:
- Choose an **Amazon Machine Image (AMI)**, which contains the OS and software configurations.
- Select an **instance type** based on CPU, memory, storage, and networking requirements.
- Configure **Security Groups**, which act as a virtual firewall to control inbound and outbound traffic.
- Set up **key pairs** for secure SSH access to your instance.

#### **2. Key Pairs**  
Key pairs are used for authentication when connecting to instances via SSH. They consist of:
- A **public key**, stored by AWS.
- A **private key**, downloaded and used to connect securely.

#### **3. Amazon Machine Images (AMIs)**  
AMIs are pre-configured templates that define the OS and software for an EC2 instance. You can:
- Use AWS-provided AMIs.
- Create your own custom AMIs.
- Share AMIs with other AWS accounts.

#### **4. Security Groups**  
Security Groups function as virtual firewalls, defining access rules. They:
- Allow or deny specific inbound/outbound traffic.
- Are stateful, meaning responses to allowed inbound requests are automatically permitted.

---

### **What is Auto Scaling Groups?**

#### **Definition**  
Auto Scaling Groups in AWS help maintain availability and ensure your application scales automatically based on demand. They:
- Launch or terminate instances dynamically based on load.
- Use scaling policies (e.g., CPU utilization thresholds) to adjust capacity.
- Improve fault tolerance by automatically replacing unhealthy instances.
- Work with Load Balancers to distribute traffic efficiently.

#### **Example**  
Imagine you run an online store. During sales, more people visit, and you need extra servers. When traffic is low, you don’t want to pay for unused servers. **Auto Scaling Groups** automatically add or remove servers based on demand, saving costs and keeping your site running smoothly.

---

### **What is Load Balancers (ALB, NLB)?**

#### **Definition**  
Load Balancers distribute incoming traffic across multiple resources to ensure high availability and optimal performance. AWS offers:

#### **Application Load Balancer (ALB)**
- Operates at **Layer 7 (HTTP/HTTPS)**.
- Supports routing based on request content (host-based or path-based).
- Ideal for **microservices or containerized applications**.

#### **Network Load Balancer (NLB)**
- Operates at **Layer 4 (TCP/UDP)**.
- Handles **millions of requests per second** with low latency.
- Suitable for **high-performance applications requiring fast response times**.

#### **Example**  
Think of a restaurant with multiple chefs. If everyone orders from just one chef, they get overwhelmed. Instead, orders are spread out so food comes faster. **Load Balancers** do the same thing—distribute traffic across multiple servers to prevent overload and improve performance.

- **ALB (Application Load Balancer)** is smart—it decides where requests should go based on the URL.  
- **NLB (Network Load Balancer)** is fast—it routes requests quickly for high-speed applications.

---

### **What is Lambda (Serverless Functions)?**

#### **Definition**  
AWS Lambda lets you **run code without provisioning or managing servers**. It:
- Executes functions **on demand** when triggered by events (e.g., API Gateway, S3, DynamoDB, etc.).
- Scales **automatically** based on workload.
- Supports multiple languages like **Python, Node.js, Java**, and more.
- Charges **only** for execution time—making it **cost-efficient**.

#### **Example**  
Instead of always running a server, what if it only worked when needed?  
**Lambda** runs small pieces of code only when triggered (like sending an email when someone signs up). No server management, no wasted cost—just instant execution when needed.


