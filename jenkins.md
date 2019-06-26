# Assignment Jenkins

**1: Create a Jenkins job(InstallPackage) that will take a package name as input and install it in local system.**
Make a jenkins job
Put the following command in the execute shell
```
#!/bin/bash

dpkg -s $1 &> /dev/null

if [ $? -eq 0 ]; then
    echo "Package  is installed!"
else
    sudo yum install $1
fi
```
Save and apply

**2:Modify InstallPackage jenkins job to take remote system IP as input to install the package.**
Make a freestyle job
copied ssh public into the remote server
parameterize the project
put the following command in execute shell
```
ssh username@ip
sudo apt-get install $packagename
```
**3:Modify InstallPackage jenkins job so that it should be able to support different types of OS such as:
Ubuntu 14/16
CentOS 6/7**
Create a freestyle job
put the following command in execute shell
```
! /bin/bash
x=`cat /etc/os-release | grep -i ^name | awk -F "=" '{print $2}'`
if [ "$x" == "Fedora" ]
then
  sudo yum install $1
else
  sudo apt-get install $1
fi
```
**4:Create below users in your system**
        dev
        qa
        devops
    qa user should be allowed only to execute the InstallPackage jenkins job
    dev user should be allowed to execute and view the content of InstallPackage jenkins job
  devops user should be admin of Jenkins server
***Solution***
move into the manage jenkins
- move to configure global system there apply the specific strategy
- for role based strategy download plugin;move into manage and assign role;create a strategy;then apply the strategy
on the specific user
- For the project based matrix authorization gointo the specific job anf apply there

