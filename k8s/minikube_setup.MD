### Minikube Setup Commands in Ubuntu
```shell
egrep --color 'vmx|svm' /proc/cpuinfo
mkdir ~/Downloads && cd ~/Downloads
wget https://download.virtualbox.org/virtualbox/6.0.8/virtualbox-6.0_6.0.8-130520~Ubuntu~bionic_amd64.deb
sudo dpkg -i virtualbox-6.0_6.0.8-130520~Ubuntu~bionic_amd64.deb
sudo apt-get update && apt-get install -f
sudo snap install kubectl --classic
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube
sudo cp minikube /usr/local/bin && rm minikube
rm -rf ~/.minikube
minikube start
kubectl run hello-minikube --image=gcr.io/google_containers/echoserver:1.4 --port=8080
kubectl expose deployment hello-minikube --type=NodePort
kubectl get pod
curl $(minikube service hello-minikube --url)
#kubectl delete deployment hello-minikube
#minikube stop
```
