# vagrant

## commands in sequence

vagrant up

vagrant ssh mgmt

ssh-keygen -t rsa -b 4096

cd /vagrant/ansible-kube 

ansible-playbook -i /inventory/local -u vagrant -k 

ansible-playbook -i /inventory/local pre-install-configure.yml

ansible-playbook -i /inventory/local setup-k8.yml

ansible-playbook -i /inventory/local start-k8-master.yml

## To bring up kubernetes dashboard

new shell:: vagrant ssh master
kubectl proxy
new Shell:: vagrant ssh master
kubectl get secret $(kubectl get serviceaccount dashboard -o jsonpath="{.secrets[0].name}") -o jsonpath="{.data.token}" | base64 --decode
http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/


