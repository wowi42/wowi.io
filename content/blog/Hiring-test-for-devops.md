+++
title = "Hiring test for devops"
draft = false
date = "2016-10-20T04:16:49+04:00"

+++

Few days ago, I've received a call from a very nice recruiter (Robbie from [Digital Gurus](http://www.digitalgurus.co.uk/)) regarding a position of DevOps engineer. Even if I'm happy with my current position, I like a lot to challenge myself, and I think that's a good way to do it.

I've signed a NDA regarding the company, but I can reveal some informations that I received before the NDA. It's a startup with a very good seed funding which want to become the Amazon of Middle East.

Knowing this, I was waiting for some great tests but I was completely disappointed when I've open the PDF.

Please find below my feedback step by step

>Imagine you're part of a team that is starting a blogging application that would eventually run on the cloud (let's assume it's AWS). The team has decided to use Wordpress to get a simple blog running as a start. Your team of developers are going to be adding features to the blog. To help them speed their releases to Production, you want to template and automate building EC2 servers and a suitable AWS infrastructure. You would be running all the different components as Docker containers.

The beginning is really great: you want to automate everything. But why Docker? Especially on AWS.

>First, you create Amazon AWS resources in a repeatable manner, using input parameters that will take default value and non-default values based on configuration file. We would like you to use Terraform in conjunction with Ansible to achieve this.

Ok, you want a cli tool to do this task, but why Terraform and ansible, and why EC2, you will have to maintain more systems.
 
>While the developers are writing code, you want to allow them to deploy code themselves. They should be able to deploy the blog app remotely using a simple command.

Let's start with the bad part: a developer should NEVER release himself. Sysadmin and devops are supposed to provide him the infrastructure as a commodity, but he should only initiate the process of release. This process should include testing, packaging, then deployment, and confirmation of working deployment.

>Here are the specs you want:
>- OS: Ubuntu Server 14.04 64-bit
>- App Server: Gunicorn/Nginx
>- Python: 2.7
>- Ansible
>- Docker 1.10
>- Wordpress official Docker image https://hub.docker.com/_/wordpress/

Ubuntu 14.04 + Docker 1.10, why not up to date software? Like Ubuntu 16.04 (LTS) and Docker 1.12? Or even better, an OS designed for this: CoreOS or Rancher. Docker is one of the software which is interacting a lot with the linux kernel, and the only solution to have a good kernel in 14.04.5 is to do a dist-upgrade to instal *lts-xenial to have an up to date kernel. Furthermore, they were talking about Terraform before, why not anymore? 

>In developing the solution, use GitHub/BitBucket and try to keep a decent commit history of how you approached the project.

infrastructure as code, very good

>Deliverables:
>(1) A GitHub repo with the Terraform configuration, Ansible playbook, Dockerfile, shell script(s) etc.
>(2) A bash script that will:
>- Launch the AWS infrastructure with EC2 servers.
>- Begin the configuration management / bootstrapping of the server using Ansible.
>- Finally start the blogging app as a Docker process.
>DO NOT CHECK THIS INTO GITHUB WITH AWS KEYS.

No flexibility, no creativity, simple execution, it's boring and you cannot detect skills

>Remember to use security groups to restrict port access. Prefix all of your AWS resources (when possible) with your first name (example: firstname-lastname.domain.com). 

no comment

>We should be able to perform the following commands and then interact with a functioning app in the
>browser.
>cloud-automation.sh <app> <environment> <num_servers> <server_size>
>ex: cloud-automation.sh hello_world dev 2 t1.micro
>This should return the IP address of the load-balanced Wordpress application, after which, we can open
>a browser to http://33.33.33.10 and see the blog app come up!

This part is the worst one. As written before, target of DevOps culture is transform the Ops side to be a commodity for the Devs. Let's split the command cloud-automation.sh <app> <environment> <num_servers> <server_size> to make it understandable:
<app>, ok, but theoretically your app is in a Git repo, so you don't need the name of the app.
<environment>: your environment should never be a manual parameter, it depends of your git branch or a tag, for example, branch dev will deploy to dev, when branch master will deploy to prod. Furthermore, if you want something clean, every commit on every branch should have his own deployment reachable at the address http://<git_commit>.<yourapp>.com
<num_servers> and <server_size>: why? again, the automation is the key of every scalable and devops platform, it should not be managed in a script. The vertical and horizontal scaling should not be managed manually, it's a job for robots.

At the end, the test is just showing that it's not a devops test, just an AWS engineer test, and you don't have any notion of real DevOps (code as a pipeline, CI/CD, automation, agility in the infrastructure), and the test is provided by some IT guys, so it reflects the culture of your company.

**Using buzzwords like Docker, AWS or Ansible doesn't make the culture of your company a DevOps culture.**
