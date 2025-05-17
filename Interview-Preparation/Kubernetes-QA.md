# Top 10 Kubernetes Interview Questions and Answers

---

## 1. What is Kubernetes?

**Answer:**  
Kubernetes is an open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications. It groups containers into logical units called Pods for easy management and discovery.

---

## 2. What are the main components of Kubernetes architecture?

**Answer:**  
- **Master Node:** Controls the cluster and manages the workloads. Key components include:  
  - API Server  
  - Controller Manager  
  - Scheduler  
  - etcd (key-value store)  
- **Worker Nodes:** Run the containerized applications and consist of:  
  - Kubelet  
  - Kube-proxy  
  - Container runtime (e.g., Docker, containerd)

---

## 3. What is a Pod in Kubernetes?

**Answer:**  
A Pod is the smallest deployable unit in Kubernetes. It represents one or more containers that share storage, network, and specifications on how to run the containers.

---

## 4. How does Kubernetes handle scaling?

**Answer:**  
Kubernetes supports scaling at the Pod level using:  
- **Manual Scaling:** User manually changes the number of replicas.  
- **Horizontal Pod Autoscaler (HPA):** Automatically scales the number of Pods based on CPU utilization or other select metrics.

---

## 5. What is the difference between a Deployment and a StatefulSet?

**Answer:**  
- **Deployment:** Used for stateless applications. It manages replicas and updates pods in a declarative way.  
- **StatefulSet:** Used for stateful applications requiring stable, unique network IDs, and persistent storage.

---

## 6. What is a Service in Kubernetes?

**Answer:**  
A Service is an abstraction that defines a logical set of Pods and a policy by which to access them, such as ClusterIP, NodePort, or LoadBalancer. It provides stable networking for Pods.

---

## 7. What is etcd?

**Answer:**  
etcd is a consistent and highly-available key-value store used as Kubernetes' backing store for all cluster data, including configuration and state.

---

## 8. How do you perform rolling updates in Kubernetes?

**Answer:**  
Kubernetes Deployments support rolling updates by gradually replacing old Pods with new ones without downtime, allowing for zero-downtime application upgrades.

---

## 9. What is a Namespace in Kubernetes?

**Answer:**  
Namespaces provide a way to divide cluster resources between multiple users or teams. They allow for scope isolation and resource quota management within the same cluster.

---

## 10. How does Kubernetes ensure high availability?

**Answer:**  
Kubernetes ensures high availability by:  
- Running multiple replicas of Pods  
- Distributing Pods across different nodes  
- Automatic rescheduling of failed Pods  
- Master node redundancy (multiple master nodes in HA setup)

---

*Prepared by ChatGPT*  
