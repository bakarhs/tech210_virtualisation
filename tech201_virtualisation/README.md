# tech210_virtualisation
tech210_virtualisation

# Dev ops and Developments

## DevOps

cloud - secure data centers that sell their own data space and services to offer security and variety on the cloud.
On premise - all datat is managed by the company 

aspects you want to improve as a DevOps engineer:

- Ease of use - Other teams are going to use the tools we create. They won't use them if they aren't user friendly - If the devs do not use our tools then there will be headaches/delays in deployment down the line.

- Flexibility - It can be easy to get locked into using a specific product, tool or software. And it then becomes hard for the company to keep up with industry changes - Everything the company uses should be easily changed or updated as the business needs change

- Robustness - We need as close to 100% uptime as possible for our company's service - We are responsible for achieving this as DevOps engineers

- Cost - Cost is often overlooked. We need to make sure the company is being as efficient as possible in its tech design - Foe example how powerful a machine do we need to conduct a task? Do we need certain servers running? etc.

Risk registers are important to understand the risks the company may face and how likely they are to happen


# Dev Environments

An area where developers are able to write/run and test code. DevOps engineers create these environments for the developer teams. we prepare the applications/ extensions they need for this space. By doing this we can standardise the developer teams communication and collaboration.

![img.png](Images/img.png)

# Ruby Installation

https://rubyinstaller.org/downloads/

Once you downland the version of ruby you need, Use git bash to check the version you have using `ruby --version` (make sure to rin gitbash as administrator)

# Virtual Box Installation

https://www.virtualbox.org/wiki/Download_Old_Builds_6_1

Once you downland the version of virtual box you need, make sure to run virtual box as administrator

### Machine settings 
Make sure to check windows hypervisor platform, you can find this by  searching in your compters setting ' Turn Windows settings on or off'

![img_1.png](Images/img_1.png)

# Vagrant Installation

https://www.vagrantup.com/

Once you downland the version of vagrant you need, Use git bash to check the version you have using `vagrant --version` (make sure to rin gitbash as administrator)

Use `vagrant init ubuntu/xenia164` 

![img_2.png](Images/img_2.png)

# Testing all together and Installing

The next step is to edit the rubi file you will receive in visual code. the program will have a lot of comments plastered around ,and you want to trim that down to look like this:
![img.png](Images/img_5.png)

We now want to test if this works and what we must do is run `vagrant up` in our GitBash.
Should look similar to this:
![img.png](Images/img_3.png)
After this i would recommend checking vagrant status:
![img.png](Images/img_4.png)

If it looks similar to this, and you have no hiccups you are now ready for the next step. if not you can refer to this installation guide below.

https://github.com/khanmaster/vb_vagrant_installtion

If all is good, we want to securely go into our VM by using `vagrant ssh` in our GitBash terminal:

![img.png](Images/img_6.png)

Notice how the coloured text goes ,and it now says we are in `vagrant@ubuntu-xenial:`

# Using a web server
Now that we are in our Vm use `sudo apt-get update -y` this will update all the core function in our VM. This will also confirm your Vms access to the internet

Next use `sudo apt-get install nginx -y` to install our program for our website

Finally, we want to use `sudo systemctl start nginx` and then `sudo systemctl status nginx` to run our website

Also in order to make create a fixed address ,so it's easier for developers all we have to do is add `config.vm.network "private_network", ip: "192.168.10.100"` and this goes just before the end statement.

Now just back out you vm by typing `exit` and use `vagrant reload` to reboot your Vm with the new setting

Now when you search the Ip address in your browser you should see the website we spun up which should look like this:

![img.png](Images/img_7.png)




