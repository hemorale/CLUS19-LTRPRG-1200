sudo minikube stop; sudo minikube delete &&
sudo rm -rf ~/.kube ~/.minikube &&
sudo rm -rf /usr/local/bin/localkube /usr/local/bin/minikube &&
sudo systemctl stop '*kubelet*.mount' &&
sudo systemctl stop localkube.service &&
sudo systemctl disable localkube.service &&
sudo rm -rf /etc/kubernetes/ &&
sudo rm /usr/local/bin/kubectl &&
kubeadm reset &&
sudo apt-get purge kubeadm kubectl kubelet kubernetes-cni kube* &&
sudo apt-get autoremove &&
sudo rm -rf ~/.kube &&
reboot
