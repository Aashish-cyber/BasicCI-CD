# BasicCI-CD

Overview
This repository contains a CI/CD pipeline setup for deploying a simple web application using AWS EC2, AWS CodeDeploy, Jenkins, and other associated tools. The pipeline automates the deployment process, ensures scalability, and maintains continuous integration and delivery.

Project Structure

app.py: The main application file for the web application.

appspec.yml: The AWS CodeDeploy configuration file.

jenkinsfile: The Jenkins pipeline configuration file.

scripts/: Directory containing deployment scripts.

requirements.txt: Python dependencies for the application.

README.md: This file.


Prerequisites

AWS Account: You need an AWS account with access to EC2, CodeDeploy, and Auto Scaling.

Jenkins: Jenkins should be set up on a separate server.

Git: To manage your source code.

Python: Ensure Python is installed for running the web application.

Setup

1. Clone the Repository
   
2. Setup Jenkins
   
Install Jenkins: Follow the Jenkins installation guide.

3.Configure Jenkins:

Install necessary plugins (Git, AWS CodeDeploy, Pipeline).

Create a new pipeline job and point it to this repository.


4. Configure AWS
   
EC2 Instances:

Launch EC2 instances and configure them with the necessary security groups.

Install and configure the CodeDeploy agent on these instances.

5. CodeDeploy:

Create a new application and deployment group in AWS CodeDeploy.

Link the deployment group to your EC2 instances or Auto Scaling group.

6. Auto Scaling:

Configure Auto Scaling groups to manage the number of instances based on load.

5. Configure Jenkins Pipeline
   
Create a Pipeline Job:

Use the jenkinsfile provided in this repository to define the build and deployment process.

7. Deployment Configuration
   
appspec.yml:

The appspec.yml file defines the deployment hooks and file locations for CodeDeploy.

Scripts:

scripts/start_flask.sh: Starts the Flask application.

scripts/stop_flask.sh: Stops the Flask application.

scripts/cleanup.sh: Cleans up temporary files.

7. Build and Deploy

Push Code to Repository:

Commit and push changes to the Git repository.

Trigger Jenkins Build:

Jenkins will automatically build and deploy the application using the defined pipeline.


Accessing the Application

EC2 Instance: Visit http://<Public IP> or http://<Public DNS> to access the application.

Load Balancer: If using a load balancer, visit http://<Load Balancer DNS Name>.

Custom Domain: If configured, visit http://www.yourdomain.com.

Troubleshooting
Deployment Issues: Check the deployment logs in AWS CodeDeploy for errors.

Application Issues: Review the application logs on the EC2 instance for any runtime errors.

Jenkins Issues: Check Jenkins logs and build history for details on build and deployment failures
