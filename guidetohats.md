# Guide to hats-ci 

We have put together this step by step guide to assist new windows developers to use hats-ci. 

**You will learn how to:**
* Get started with Hats-ci
* Run robot scripts using Hats-ci
* View logs and recordings generated

## Step 0. Pre-requisite
Ensure that you have already downloaded the latest version of [hats-ci](https://github.com/younglim/hats-ci)

## Step 1. Check out the folder structure

After downloading the latest version of hats-ci, you will see hats folder.

Navigate to the robot_automation folder

    hats
    ├── robot_automation        
    │   ├── browserlogs         # Logs for web browsers (E.g. Chrome, Firefox)
    │   ├── drivers             # Chrome Drivers for Windows, Mac and Linux
    |   ├── hatslib.robot       # Main Robot Script
    |   ├── logs                # Logs for mobile devices (E.g. Android)
    |   ├── src                 # Python Source files
    │   └── testscripts         # Robot Test Scripts
    └── ...

## Step 2. Getting started with browser automation

1. Load hats virtual environment on your command prompt by running `hats_shell`


2. Navigate to the robot_automation folder by running the following command on your command prompt
   ```
   cd C:\Program Files\hats\robot_automation
3. Run the main robot script to execute the other test scripts
   ```
   robot hatslib.robot
