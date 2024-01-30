*** Settings ***
Library    AppiumLibrary    run_on_failure=AppiumLibrary.CapturePageScreenshot


*** Variables ***
${APPIUM_SERVER}    http://127.0.0.1:4723/wd/hub
${AUTOMATION_NAME}    Uiautomator2
${PLATFORM_VERSION}    13
${PLATFORM_NAME}    Android
${DEVICE_NAME}    Rhythm's M13
${PACKAGE_NAME}    in.amazon.mShop.android.shopping
${ACTIVITY_NAME}    com.amazon.mShop.splashscreen.StartupActivity
${TIMEOUT}    15s
${SEARCH}    //android.widget.TextView[@resource-id="in.amazon.mShop.android.shopping:id/chrome_search_hint_view"]
${TYPEPRODUCT}    //android.widget.EditText[@resource-id="in.amazon.mShop.android.shopping:id/rs_search_src_text"]
${ITEM}  //android.widget.Image[@elementId="00000000-0000-1e03-0000-045a000000a1"]
*** Keywords ***
Search Product
    Click Element  ${SEARCH}
    Input text    ${TYPEPRODUCT}   Shoes for women
    Press Keycode     66
Select Item
    Sleep  4s
    Swipe   300    2100    300   900
    sleep    3s
    Click Element  ${ITEM}
    sleep  3s
    Swipe   300    2100    300   200
    Swipe   300    2100    300   200
*** Test Cases ***
Open Test Application
    Open Application    ${APPIUM_SERVER}
    ...    automationName=${AUTOMATION_NAME}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${PACKAGE_NAME}
    ...    appActivity=${ACTIVITY_NAME}
    ...    noReset=true
    ...    allowInsecure=true

Select Product
    Search Product
    Select Item