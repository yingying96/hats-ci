# hats-ci

The *hats-ci* installer installs packages needed to run browsers automated functional test on Windows.
Simplifies the steps to setup test environment in Windows. 

It consists of a series of PowerShell scripts which downloads and installs relevant dependencies and packages.
A virtual environment will be set up and configured in your local machine as well which will be ready for Robot Framework testing.


## Motivation
We believe that agile quality practices accelerate the delivery of quality applications.
To deal with a growing test backlog, test automation is a more scalable and cost-effective approach.

As a group of passionate quality engineers, we want to lower the barrier of entry to web app test automation so that everyone can contribute to software quality.

## Supported Platforms
*hats* has been tested on the following platforms:

##### Operating Systems
* Windows 7, 8.1, 10 (64-bit)
* Mac OS X El-Capitan, macOS Sierra, High Sierra, Mojave
* Linux CentOS, Fedora, Ubuntu instructions are available at https://github.com/younglim/hats-linux .

##### Browsers
* Microsoft Internet Explorer 11
* Microsoft Edge 44
* Google Chrome 54 (or newer)
* Mozilla Firefox 54 (or newer)
* Apple Safari 10 and later

## Recommended: User Setup (Offline Installer)
Steps recommended for quickly getting started on automated testing.
1. Download the latest [release](https://github.com/GovTechSG/hats-ci/releases)
2. Run `hats_for_Windows_xx.exe`.
3. Refer to Release Notes for detailed information.

## Development Setup (Online Installer)
Steps recommended for experienced developers or those who want to contribute to `hats-ci`.
### For Windows
0. Clone this repository.
1. Navigate to `virtualenv` directory 
2. Run `00_Install_and_Run_Robot.bat` to download and install the packages - a demo Robot test will run at the end as well to verify that the installation has been successful 
3. Navigate to `virtualenv/shell` directory
4. Run `hats_shell.cmd` and you are ready to run any pybot commands and start testing with your Robot scripts!
5. You can also run `hats_shell` from Command Prompt or Powershell.
6. For uninstallation, from Command Prompt or Powershell, run `hats_shell uninstall` .

## For Mac
1. Install **Xcode and Xcode Developer tools** with your own Apple Credentials in the App Store. (Skip this step if Xcode was already installed)
2. Open **Xcode** for the first time and Click **Agree**. *(Skip this step if Xcode was previously used)*
3. Make sure **Google Chrome** and **Firefox** have been installed prior *(and at least opened once to overcome Apple's security popup)*
4. In Terminal, run:

```
bash <(curl -s https://raw.githubusercontent.com/younglim/hats-ci/master/assets/mac-installer.sh)
```
5. To Allow safaridriver to run successfully, enable: 1) Enable Develop menu on Safari > Preferences.. > Advanced 2) Go to the newly added Develop menu, Click "Allow Remote Automation"
6. Restart Terminal for `hats_shell` to be started in Terminal automatically.

** Note, Amazon Corretto 8 Java 1.8 is used.

## Automated Tests
A quick way to create a test script is to use [Robotcorder](http://bit.ly/hats-robotcorder) and edit the script from Robotcorder.

### Get started with Robotcorder
1. Open a command prompt. Run `hats_shell`. 
2. Run `robotcorder` for instructions setting up the Chrome extension.

### Writing/Editing a test
You can either use
1. [Eclipse IDE](https://eclipse.org/) with [RED plugin](https://github.com/nokia/RED). Type `red` in hats_shell to begin.
2. [Pycharm IDE](https://www.jetbrains.com/pycharm/) with [IntelliBot plugin](https://plugins.jetbrains.com/plugin/7386-intellibot)
3. [Notepad++](https://notepad-plus-plus.org/)

### Running a test

#### Folder Structure

    hats
    ├── ...
    ├── robot_automation        
    │   ├── browserlogs         # Logs for web browsers (E.g. Chrome, Firefox)
    │   ├── drivers             # Chrome Drivers for Windows, Mac and Linux
    |   ├── hatslib.robot       # Main Robot Script
    |   ├── logs                # Logs for mobile devices (E.g. Android)
    |   ├── src                 # Python Source files
    │   └── testscripts         # Robot Test Scripts
    └── ...


#### Windows
1. Open a command prompt. Run `hats_shell`.
2. Navigate to robot automation folder 

    ```
    cd "C:\Program Files\hats\robot_automation"
3. Run the main robot script

    ```
    robot hatslib.robot
#### Mac
1. Open a terminal.
2. Ensure `(hats)` virtuelenv has loaded.  
3. Navigate to robot automation folder located within the hats folder.

### Testing with Android
1. Make sure all $ANDROID environment variables are set.
2. To programatically boot the Android Virtual Device(AVD), the commmand `emulator -avd testAVD` must be run from the *tools* folder in the *android-sdk* directory.

## Contributions
We welcome your involvement, be it fixing bugs or implementing new features that you find relevant to this project.

To contribute, you may follow the steps below:
1. Fork the repo
2. Create a new branch from `development` to work on your contribution
3. Create a pull request back here!

