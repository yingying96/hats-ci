# Guide to hats-ci 

We have put together this step by step guide to assist new windows developers to use hats-ci. 

**You will learn how to:**
* Get started with Hats-ci
* Run robot scripts using Hats-ci
* View logs and recordings generated

## Step 0. Pre-requisite
Ensure that you have already downloaded the latest version of [hats-ci](https://github.com/younglim/hats-ci)
Basic understanding of robot framework (Link to robot framework guide here)


## Step 1. Check out the folder structure

After downloading the latest version of hats-ci, you will see hats folder.

Navigate to the robot_automation folder as shown below to explore the folder structure

    hats
    ├── robot_automation        
    │   ├── browserlogs              # Logs for web browsers (E.g. Chrome, Firefox)
    │   ├── drivers                  # Chrome Drivers for Windows, Mac and Linux
    |   ├── hatslib.robot            # Main Robot Script
    |   ├── logs                     # Logs for mobile devices (E.g. Android)
    |   ├── src                      # Python Source files
    │   └── testscripts              # Sample Robot Test Scripts
    |       ├── web_test.robot       # For browser automation
    |       ├── resource.robot
    |       ├── android.robot        # For android google chrome
    |       └── android_app.robot    # For android mobile applications
    └── ...

## Step 2. Getting started with browser automation

1. Load hats virtual environment on your command prompt by running `hats_shell`


2. Navigate to the robot_automation folder by running the following command on your command prompt
   ```
   cd C:\Program Files\hats\robot_automation
3. Run the main robot script to execute the other test scripts
   ```
   robot hatslib.robot
   ```
   
   Test scripts excuted by hatslib.robot (Main robot script)
   
   ![img](https://i.imgur.com/iDZyATT.png)

   *For this guide, we have excluded android automation and focused on browser automation*
   
   
