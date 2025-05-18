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

