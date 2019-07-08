## 1.Create a Jenkins job that will create a tag using Git plugin.:
```
Create a Freestyle Project 
Select git under Source Code manager 
Add credentials and check “Create a tag for every build” under Additional Behaviours
Add Past build action , install git publisher and provide tag detail under tags section
Target remote name : origin
check Create new Tags
Save and Apply
```
## 2.Maven based jenkins job
```
Add path of Maven installtion in Global Configuration
Create new  freestylejobs jobs
Add git repo and maven goal in build section
save and build
```
## 3.Run a script to find out top 5 files as major contributor to disk space
```
Install Necessary plugins
Set  ssh host in global Configuration
Create new job in Build select Execute shell script on remote host using ssh 
add ssh site : username@IP
Cammand : sudo du -hs * | sort -rh | head -5
```
## 4.Create a Jenkins job that will generate a HTML file for the commits happened in last 10 days and publishes it as HTML report
```
Create a free-style software project, naming it test.html
   Under the Post-build Actions section, check Publish HTML reports, adding the following details:
        ◦ HTML directory to archive: directory path
        ◦ Index page[s]: index.html 
        ◦ Report title: My HTML Report 
        ◦ Tick the checkbox Keep past HTML reports
```

