# Guide to hats-ci 

We have put together this step by step guide to assist new developers to use hats-ci. 

**You will learn how to:**
* Get started with Hats-ci
* Run robot scripts using Hats-ci
* View logs and recordings generated

## Step 0. Pre-requisite
* Ensure that you have already downloaded the latest version of [hats-ci](https://github.com/younglim/hats-ci)
* Downloaded the web browsers (E.g. Google Chrome, Microsoft Edge) that you want to test on 
* Basic understanding of [robot framework](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html) 


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
   
   <img src="https://imgur.com/mEFPTll.png" width="500">
   
   Snippet of hatslib.robot (Main robot script)
   
   <img src="https://i.imgur.com/iDZyATT.png" width="600">

   *For this guide, we have excluded android automation (android.robot) and focused on browser automation (web_test.robot)*
   
   
## Step 3. Browser automation in session

1. Once you run hatslib.robot (main robot script), the test scripts located within the test scripts folder is executed.

2. Multiple web browser will launch at the same time and proceed to www.google.com to search keyword "python"

3. A screenshot will be taken at python's search results page


## Step 4. Verifying the results

1. Once the test has completed, you can view the logs and report located within browserlogs folder for more details

   ![img](https://media.giphy.com/media/LSckueQa9fnd0hhm3G/giphy.gif)

   Note: Screen recording is only available for automation of android devices and not browser automation
