# aws-devops-ci-cd-mini-project-1
End-to-end AWS DevOps CI/CD mini project using Jenkins, Terraform, Ansible, GitHub and Splunk

Automated CI/CD Pipeline for Web Application Deployment on AWS

Tools Used:
•	AWS: EC2, IAM, S3, CloudWatch
•	GitHub: Source Code
•	Jenkins: CI/CD
•	Terraform: Infrastructure Provisioning
•	Ansible: Configuration Management
•	Shell Scripting: Automation
•	Splunk: Log Monitoring
•	Service Now: Incident Management

Project Architecture:   
           Developer → GitHub → Jenkins → Terraform → AWS EC2
                                    ↓
                                  Ansible
                                    ↓
                            Application Deploy
                                    ↓
                              Logs → Splunk
                                    ↓
                          Alerts → ServiceNow

Implementation:
	Step 1: Create GitHub Repository
                  Repo Name: aws-devops-ci-cd-mini-project.
         What is GitHub?
•	GitHub = Online storage for your project code
•	Like Google Drive, but only for code
•	It keeps:
o	All files
o	History of changes
o	Team collaboration
•	Jenkins and other tools will read code from GitHub
•	In simple words GitHub is used as a version control system to store application code, scripts, and pipeline files.

•	Folder Structure
<img width="984" height="510" alt="image" src="https://github.com/user-attachments/assets/69a2c9ef-e152-48ec-b578-734243960b8b" />

  
	I created a GitHub repository to store my entire DevOps project.
	The app folder contains application code.
	Terraform folder provisions AWS infrastructure.
	Ansible folder configures the server.
	Scripts folder has automation scripts.
	Jenkins file defines the CI/CD pipeline.
	Step 2: Create simple web application (index.html)
What is an application in DevOps?
o	Application is what end users see. 
o	In our project it’s a web page
o	This page will be deployed on AWS EC2
o	Nginx will serve this page
               I created a simple web application to validate the CI/CD deployment flow
	What is HTML?	
o	HTML = HyperText Markup language
o	It tells the browser, what text to show and how to structure the page
o	We need to create it inside the repo index.html. Because, Jenkins will copy the file and Nginx will host it.
            The basic code 
                   <img width="805" height="243" alt="image" src="https://github.com/user-attachments/assets/25aabbdd-c5ea-4186-acb1-9f1d0a9cdcef" />

           And commit the changes in app/index.html file.
	Step 3: Create AWS Infrastructure Using Terraform:
o	What is Infrastructure?
       Infrastructure means Servers, Networks, Storage    
In AWS, EC2=Virtual Server, AMI= OS inside the server, Key Pair=Login key
It is a foundation where applications are deployed.
o	What is Terraform?
           Terraform is a tool that creates AWS resources automatically, uses code instead of clicking, makes infra repeatable and consistent.
          In simple words, Instead of manually creating EC2 everytime, Terraform does it in seconds.
      Terraform is an Infrastructure as Code tool used to provision AWS resources.
So now we are creating one EC2 instance using terraform for hosting our web app
In terraform/main.tf 
               <img width="391" height="309" alt="image" src="https://github.com/user-attachments/assets/5283cf14-76f5-47af-ab5e-721b5118750f" />

In terraform/Variables.tf
              <img width="321" height="196" alt="image" src="https://github.com/user-attachments/assets/cf9003a6-bebb-4612-abdf-1e45dd885c39" />

	Step 4: Configuration management using ansible:
o	What is ansible?
              Ansible is a tool that installs software automatically, Configure servers, Runs commands remotely, Does not need agent on server.
               Instead of logging into EC2 and installing Nginx manually, Ansible does it automatically.
                Ansible is a configuration management tool used to automate server setup.
o	Why ansible after terraform?
                 Terraform creates infrastructure (provisions server) and ansible configures them.
o	What are we configuring now?
              On EC2 we will install Nginx, start Nginx, Enable it to run automatically.
          So in the created ansible folder and file Nginx,
              <img width="406" height="443" alt="image" src="https://github.com/user-attachments/assets/fa8bdaf4-4bb0-4c43-b250-ce8385026d69" />
	Step 5: Shell Scripting - Application health check:
           What is Shell scripting?
               Writing simple commands in a file, automating tasks, mostly used in linux servers.
               Shell scripting is used to automate operational tasks.
           what will our shell script do?
                our script will check if nginx is running, if not running=> check whether the pipeline is failed. jenkins will detect the failure.
                <img width="358" height="261" alt="image" src="https://github.com/user-attachments/assets/58f017ca-df9a-4d36-8b1e-8634a6ca9116" />

	Step 6:  Jenkins CI/CD pipeline:   
                 Jenkins is a CI/CD automation tool, run jobs automatically 
              <img width="563" height="662" alt="image" src="https://github.com/user-attachments/assets/7848b4c0-2321-480e-9525-89381b87dea9" />

 

