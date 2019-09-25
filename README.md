# RustAutoBackup
Backup script for Running Rust Server via RSM

RSM
https://rustservermanager.com/


## Getting Started

All you need to do is download the bat file that fits you. You can choose either standalone or for the task sheduler.
You can edit the batch file via a text editor like notepad or whichever you are comfortable with. 


### Setting up Standalone version

The standalone version will keep the CMD open and run every x seconds an automated backup (Default is set to 15 min. To calculate how many seconds you need:  minutes x 60 = amount of seconds you need to type in. For example 15 minutes is 900 seconds.) 

#### Countdown
At line 33 you can adjust the value for the countdown.
```C++
set countdown=900
```

#### Source & Destination path
At line 52 and 54 you set your path for the server root directory and a destination path for your backups.
```C++
set SourcePath=E:\Rust

set DestinationPath=E:\Backups
```


### Setting up Standalone version

Rust Automated Backup script for Task Scheduler only runs once everytime it is requested via the Task Scheduler. 

Here's how to add a schedule: https://www.digitalcitizen.life/how-create-task-basic-task-wizard

#### Source & Destination path
At line 52 and 54 you set your path for the server root directory and a destination path for your backups.
```C++
set SourcePath=E:\Rust

set DestinationPath=E:\Backups
```


# Download links
- [Release v1.0](https://github.com/RuschGaming/RustAutoBackup/releases)


# To do's

- [X] Standalone version
- [X] Task Shedule version
- [ ] Auto delete x days old files

