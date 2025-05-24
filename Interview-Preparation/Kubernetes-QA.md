# 🧠 Kubernetes Overview

**Kubernetes** is an open-source platform used for container management, including:

- 🚀 **Deployment automation**
- 📈 **Container scaling**
- ⚖️ **Load balancing**

It automates the **scheduling**, **running**, and **management** of isolated containers across **virtual**, **physical**, or **cloud** environments.

✅ All major cloud providers (like **AWS**, **Azure**, and **GCP**) support Kubernetes.

---

## 🕰️ History of Kubernetes

- 🏗️ Developed by **Google** based on their internal system called **Borg** (later evolved into **Omega**) used to manage thousands of applications and services.
- 📅 In **2014**, Google introduced **Kubernetes** as an open-source project.
- 💻 Written in **Go (Golang)**.
- 🌐 Donated to the **Cloud Native Computing Foundation (CNCF)**.

---

## 🧪 Online Platforms for Kubernetes (K8s) Practice

- 🎮 [Kubernetes Playground](https://labs.play-with-k8s.com/)
- 🧑‍🏫 [Play with Kubernetes Classroom](https://training.play-with-kubernetes.com/)

---

## ☁️ Cloud-Based Kubernetes Services

- 🔷 **GKE** – Google Kubernetes Engine  
- 🔶 **AKS** – Azure Kubernetes Service  
- 🟩 **EKS** – Amazon Elastic Kubernetes Service

---

## 🛠️ Kubernetes Installation Tools

- 💻 **Minikube** – Run Kubernetes locally for learning and development.
- ⚙️ **Kubeadm** – Tool to install and configure Kubernetes clusters manually or semi-automatically.

  ---

## ⚠️ Problems Before Kubernetes 

- 🔌 **Containers could not communicate with each other**  
  → Difficult to manage distributed applications.

- 📉 **Autoscaling and load balancing were not possible**  
  → Manual intervention was needed to handle traffic and resource spikes.

- 🧩 **Scaling up containers was complex**  
  → Required significant configuration and management effort.

- 🧯 **Containers had to be managed carefully**  
  → No built-in tools for health checks, failover, or rolling updates.

---

## 🌟 Key Features of Kubernetes

- 📈 **Autoscaling**  
  Automatically scales containers based on CPU/memory usage or custom metrics.

- ❤️ **Auto-Healing**  
  Restarts failed containers, replaces and reschedules them if nodes die.

- ⚖️ **Load Balancing**  
  Distributes network traffic evenly across containers.

- 🌍 **Platform Independent**  
  Runs on cloud, virtual, or physical machines.

- 🛡️ **Fault Tolerance**  
  Handles node or pod failures without affecting application availability.

- ⏪ **Rollback**  
  Supports rolling back to a previous version of an application.

- 🩺 **Health Monitoring**  
  Monitors container health using liveness and readiness probes.

- 🗂️ **Batch Execution**  
  Supports one-time jobs and batch processing (sequential or parallel).

---


