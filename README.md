**Instructions for deploying the Simple Time Service python application:**

**Pre-requisites:**
Virtual/Physical Machine with stable versions of Git, Docker installed in it. For procedure 2, only docker installation is required.

**Steps:**

**Procedure 1:**

•	Clone this git repository using the command git clone.

•	After cloning the repository, go to the directory "app" and build the image using the command "docker build".

•	Run the built image using the command "docker run". Now, the container will be run.

•	Test it by accessing url http://localhost:5000.

**Procedure 2:**

•	Pull the docker image using the command "docker pull pavankumarthotakura/simple-time-service:latest".

•	Run the built image using the command "docker run". Now, the container will be run.

•	Test it by accessing url http://localhost:5000.

**Instructions for creating the infrastructure to host container.:**

**Pre-requisites:**
Stable version of git, terraform installed in local. Also, AWS configured in the local using AWS CLI.

**Steps**

•	Clone this git repo and go to the folder named ‘terraform’.

•	Run the command "terraform plan" for the dry run.

•	Run the command "terraform apply" to create the infrastructure.

•	The application will run once the infrastructure is created.

•	Test it by accessing url http://localhost:5000.

