# 🧠 Kubernetes Overview

**Kubernetes** is an open-source platform used for container management, including:

- 🚀 **Deployment automation**
- 📈 **Container scaling**
- ⚖️ **Load balancing**

It automates the **scheduling**, **running**, and **management** of isolated containers across **virtual**, **physical**, or **cloud** environments.

✅ All major cloud providers (like **AWS**, **Azure**, and **GCP**) support Kubernetes.

---

# 🕰️ History of Kubernetes

- 🏗️ Developed by **Google** based on their internal system called **Borg** (later evolved into **Omega**) used to manage thousands of applications and services.
- 📅 In **2014**, Google introduced **Kubernetes** as an open-source project.
- 💻 Written in **Go (Golang)**.
- 🌐 Donated to the **Cloud Native Computing Foundation (CNCF)**.

---

# 🧪 Online Platforms for Kubernetes (K8s) Practice

- 🎮 [Kubernetes Playground](https://labs.play-with-k8s.com/)
- 🧑‍🏫 [Play with Kubernetes Classroom](https://training.play-with-kubernetes.com/)

---

# ☁️ Cloud-Based Kubernetes Services

- 🔷 **GKE** – Google Kubernetes Engine  
- 🔶 **AKS** – Azure Kubernetes Service  
- 🟩 **EKS** – Amazon Elastic Kubernetes Service

---

# 🛠️ Kubernetes Installation Tools

- 💻 **Minikube** – Run Kubernetes locally for learning and development.
- ⚙️ **Kubeadm** – Tool to install and configure Kubernetes clusters manually or semi-automatically.

---

# ⚠️ Problems Before Kubernetes 

- 🔌 **Containers could not communicate with each other**  
  → Difficult to manage distributed applications.

- 📉 **Autoscaling and load balancing were not possible**  
  → Manual intervention was needed to handle traffic and resource spikes.

- 🧩 **Scaling up containers was complex**  
  → Required significant configuration and management effort.

- 🧯 **Containers had to be managed carefully**  
  → No built-in tools for health checks, failover, or rolling updates.

---

# 🌟 Key Features of Kubernetes

- 📈 **Autoscaling**  
  Automatically scales containers based on CPU/memory usage or custom metrics.
  - 🔄 **HPA (Horizontal Pod Autoscaler)**: Changes the number of pods.  
  - 📏 **VPA (Vertical Pod Autoscaler)**: Changes pod resource limits (CPU/RAM).

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

# ⚙️ Features Comparison: Kubernetes vs Docker Swarm

| Feature                  | Kubernetes                                    | Docker Swarm             |
|--------------------------|-----------------------------------------------|-------------------------|
| 🛠️ **Installation & Setup** | Complicated and time-consuming                 | ⚡ Fast and easy           |
| 🐳 **Container Support**    | Works with almost all container types like Docker, containerd, etc. | Works mainly with Docker containers |
| 🖥️ **GUI**                  | ✅ Available                                     | ❌ Not available           |
| 💾 **Data Volumes**         | Shared only with containers in the same pod   | Can be shared with other containers |
| 🔄 **Updates & Rollback**   | Supports progressive updates with health monitoring | Limited support         |
| 📈 **Autoscaling**          | Supports both Horizontal Pod Autoscaling (HPA) and Vertical Pod Autoscaling (VPA) | Limited autoscaling     |
| 📊 **Logging & Monitoring** | Built-in tools available                       | Limited tools           |


---
# ☁️ Kubernetes Architecture Hierarchy

<pre>
☁️ Cluster
  │
  └── 🖥️ Node
        │
        └── 📦 Pod
              │
              └── 🐳 Container
                    │
                    └── ⚙️ Application / Microservice
</pre>

---
# ☸️ Kubernetes Architecture

![K8s Architecture](https://github.com/akash08-ak/AWS-Project-Setup/blob/main/Images/Kubernetes%20architecture.png)

## 🧠 Control Plane Components

- **API Server**: Central communication point; all control components talk through it.
- **Kube Scheduler**: Assigns Pods to available Nodes based on resource availability.
- **etcd**: A key-value database that stores cluster state (e.g., Pods, nodes, IPs).
- **Controller Manager**: Ensures desired state matches actual state by coordinating with API Server.

## ⚙️ Node/Worker Plane (Data Plane)

- **Kubelet**: Talks to API Server, manages Pods, runs containers via runtime (e.g., Docker).
- **Kube-proxy**: Assigns IPs, enables networking and load-balancing across Pods.
- **Container Runtime**: Tool like Docker, Podman, containerd to run containers.
- **Pod**: Smallest unit in K8s, can contain one or more containers sharing network/storage.

## 📈 **Kubernetes Cluster Flow – Step-by-Step**

1. 🧑‍💻 **User Sends Request**
   - A user (or CI/CD pipeline) submits a YAML file (e.g., `Deployment`, `Service`) to the **API Server**.
   - This YAML defines the **desired state** (e.g., 3 Pods of a web app).

2. 🧭 **API Server Receives & Validates**
   - API Server **validates** the YAML and **stores** it in **etcd** (the database of the cluster).
   - etcd now holds the "desired state" of the cluster.

3. 🔍 **Controller Manager Detects Difference**
   - The **Controller Manager** constantly monitors etcd for any difference between:
     - What the user wants (desired state)
     - What is currently running (actual state)

4. ⚠️ **Mismatch Found**
   - If there’s a difference (e.g., 0 Pods running but 3 requested), the Controller Manager takes **action**.

5. 🧠 **Scheduler Kicks In**
   - The **Scheduler** is triggered via the **API Server**.
   - It picks the **best Node** for the new Pod(s) based on:
     - Available CPU/memory
     - Node affinity
     - Taints and tolerations

6. 🛰️ **Kubelet on Target Node**
   - Once the Node is selected, the **Kubelet** (agent on that Node) receives the instructions from the API Server.
   - Kubelet uses the **Container Runtime** (like Docker or containerd) to **pull images** and **start containers** inside a **Pod**.

7. 🧠 **Kube-proxy Handles Networking**
   - The **Kube-proxy** on the Node assigns a **cluster IP** to the Pod.
   - It updates the **network rules** for service discovery and load balancing.

8. 📝 **Status Sent Back**
   - Node status and Pod health are continuously sent back to the API Server and stored in **etcd**.
   - Now, the **actual state = desired state**, so no further action is taken until the next change.


---

# 📦 Kubernetes Objects & Cluster State

Kubernetes uses **Objects** to represent the **desired state** of your cluster. These objects define:

- 📍 **What containerized applications** are running  
- 🖥️ **Which nodes** they run on  
- ⚙️ **How they should behave**, including:  
  - 🔁 Restart policies  
  - ⬆️ Upgrades  
  - 🛡️ Fault tolerance

Once an object is created, **Kubernetes continuously works to match the actual cluster state with the desired state**.

---

## 🧱 Structure of a Kubernetes Object

Each Kubernetes object has two key fields:

### 1. 📝 `spec` (Specification)
- Defines the **desired state** of the object.
- You provide this when creating the object.
- Example: “I want 3 replicas of this pod running.”

### 2. 📊 `status`
- Reflects the **current state** of the object.
- Updated by the **Kubernetes system**.
- Shows if the system is achieving the desired state.

🔑 Each object is uniquely identified by:
- 🏷️ **Name**
- 🆔 **UID** (Unique Identifier)

---

## 📚 Basic Kubernetes Objects

| 🔢 | Object        | Description |
|----|---------------|-------------|
| 1️⃣ | **Pod**         | 🧩 Smallest deployable unit; runs containers |
| 2️⃣ | **Service**     | 🌐 Exposes a group of pods via a stable network |
| 3️⃣ | **Volume**      | 💾 Provides persistent storage to containers |
| 4️⃣ | **Namespace**   | 🗂️ Isolates groups of resources in a cluster |
| 5️⃣ | **ReplicaSet**  | 🔁 Ensures a specified number of pod replicas |
| 6️⃣ | **Secret**      | 🔐 Stores sensitive info like passwords, tokens |
| 7️⃣ | **ConfigMap**   | 🧾 Stores config data in key-value format |
| 8️⃣ | **Deployment**  | 🚀 Manages updates and rollbacks of pods |
| 9️⃣ | **Job**         | ✅ Runs pods until a task completes successfully |
| 🔟 | **DaemonSet**   | 📦 Ensures a pod runs on all (or some) nodes |

---









