#!/bin/bash 

code_clone() {
        # cloning the repository
	
	echo "Cloning the django app"

	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requiremets() {

	echo "Installing the dependencies" 
        
	sudo apt-get update 
	sudo apt-get install docker.io nginx -y docker-compose-v2 

} 

required_restarts(){

	echo "Restarting the services" 
        
	sudo chown $USER /var/run/docker.sock
	#sudo systemctl enable docker
	#sudo systemctl enable nginx
	#sudo systemctl restart docker

}

deploy(){

	docker build -t notes-app .
	#docker run -d -p 8000:8000 notes-app:latest
        docker compose up -d

}


echo "*************Deployement Started***************"

if ! code_clone; then

	echo "The code directory already exists"
	cd django-notes-app
fi 

if ! install_requiremets; then

	echo "Installation Failed" 
	exit 1
fi 

if ! required_restarts; then

	echo "System fault indentified"
	exit 1
fi 

if ! deploy; then

	echo "Deployement Failed" 
fi 

echo "************Deployement Stopped*****************"
