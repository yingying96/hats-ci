# Guide to hats-ci 

We have put together this step by step guide to assist new developers to use hats-ci. 

**You will learn how to:**
* Get started with Hats-ci
* Run robot scripts using Hats-ci
* View logs and recordings generated

## Step 0. Pre-requisites
* Ensure that you have already downloaded the latest version of [hats-ci](https://github.com/younglim/hats-ci) and [Scrcpy](https://github.com/Genymobile/scrcpy) 
* Ensure that you are connected to at least one android device
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

## Step 2. Get started with mobile and browser automation

1. Load hats virtual environment on your command prompt by running `hats_shell`


2. Navigate to the robot_automation folder by running the following command on your command prompt
   ```
   cd C:\Program Files\hats\robot_automation
3. Run the main robot script to execute the other robot test scripts
   ```
   robot hatslib.robot
   ```
   
   The sample robot test scripts that can be executed by hatslib.robot are shown below
   
   <img src="https://imgur.com/mEFPTll.png" width="500">
   
4. Review our snippet of hatslib.robot (Main robot script)
   
   <img src="https://imgur.com/jV2GJQ1.png" width="600">
   
   *Note: Excluded Android_app.robot test script and focused on web and mobile automation of browsers
   

## Step 3. Android automation in session

1. Once you run hatslib.robot (main robot script), the robot test scripts located within the test scripts folder are executed

2. It will run the first robot test script - android.robot

3. Scrcpy will launch the display of the connected android device 

4. You should see the test being executed when the google chrome mobile application is launched


## Step 4. Browser automation in session

1. Once android.robot has completed running, it will move on to the second robot test script - web_test.robot

2. The test will be executed and multiple web browser will launch at the same time


## Step 4. Verify the results

1. Once the test has completed, you can view the logs and report located within browserlogs and logs folder for more details

   ![img](https://media.giphy.com/media/LSckueQa9fnd0hhm3G/giphy.gif)
   
2. Screen recordings of the robot test scripts executing on android devices are saved within the logs folder

   Sample mobile screen recordings shown below
   
   ![img](https://media.giphy.com/media/SqTvGesL8C228P0C95/giphy.gif)

   *Note: Screen recording is only available for automation of android devices and not browser automation
