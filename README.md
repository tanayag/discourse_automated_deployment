# Discourse Automated Deployment

## Clone Repo

* `git clone https://github.com/tanayag/discourse_automated_deployment.git`
* Copy .env file provided to the same folder

## Start an EC2 Instance(AWS Stack):

### OS
Ubuntu 22.04 LTS(free tier)

### Instance
t2.micro(need at least 1gb memory)

### Key-Pair(for login)
Create ‘discourse_automate.pem’ in the cloned repo

### Network Setting
Make sure ‘http’, ‘https’ and ‘ssh’ are enabled

### Configure Storage
30gb(max limit for free tier, although 15gb should be enough)


## Instructions for Installation:

1. Provide credentials in '.env' for AWS.
2. Provide IP of EC2 cloud instance in DNS setting from your domain provider.
3. If changing STMP server or domain, update SFP and DKIM settings in domain dns settings.(If not changing domain or SMTP server skip the step)
4. Run; `. ec2_ssh_setup.sh`. This will take you inside ec2 instance and copy some important files
5. Once in the aws shell run; `. discourse-setup`.

After 5-15 mins, discourse should be up and running on domain name provided.
Everything is dockerbased, so dependencies won't be an issue.

## Issue with this setup is that I do not have access to namecheap(my domain provider) API, to change the cloud ip in dns settings. Thus this has to be done manually before starting main deployment process, which is being done is step 5. If API access to namecheap is available, we can skip step2.

## Hosted server can be found [here](https://discourse.agrawaltanay.xyz)

User can sign up, post topics and enbale multifactor authentication

Check out this [demo Video](https://youtu.be/m-wC0_P5uAA)

