*** Settings ***
Documentation    This suite is for Settings application tests
Resource    ../Resources/GenericUi.robot
Resource    ../Variables/test_robo_variables.robot

Variables   ../Variables/test_config.yaml


*** Variables ***
${PATH_TO_APK}    D:\\Swiggy Food Order Delivery_v3.7.0_apkpure.com.apk

*** Test Cases ***
Settings_001
    [Documentation]    Opens Settings application
    [Tags]    r_1
    Provided precondition
    launch app    Settings
## this is a comment
## this is another comment

Settings_002
    [Documentation]    Install Swiggy app
    [Tags]   r_2
    log to console   ${PATH_TO_APK}
    Install an app    ${PATH_TO_APK}
    press home on device

Settings_003
    [Documentation]   Print my name
    log to console    ${MY_NAME}
    log to console    ${COMPANY_NAME}

Settings_004
    [Documentation]  Forget a paired devices
    [Tags]  Bluetooth
    Forget paired device    Muffs Pro

Settings_005
    [Documentation]  Get number of paired devices
    Open connected devices settings
    click text  Previously connected devices
    ${count}    get count for  resourceId=android:id/title     className=android.widget.TextView
    log to console  Total paired devices is ${count}

Settings_006
    [Documentation]  Forget paired device
    forget paired device  Muffs Pro

Settings_007
    [Documentation]  Check for default Bluetooth name
    check for bluetooth name

Settings_008
    [Documentation]  Change Bluetooth Name
    Change bluetooth name

Settings_009
    [Documentation]  Check if Bluetooth is off
    check if bluetooth is off






*** Keywords ***
Provided precondition
    log to console    Provided precondition


## Get attibutes from device
## Get command output
