# command to execute after setup

## build docker image
cd /vagrant 
sudo docker build -t myjenkins .

## start jenkins container
sudo docker run --rm --name=jenkins1 -d -p 8080:8080 -p 50000:50000 -v /vagrant/jenkins_home:/var/jenkins_home -v /usr/lib/jvm/java-11-openjdk-amd64:/var/java_home -v /opt/gradle/gradle-5.0:/var/gradle_home -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker myjenkins:latest
