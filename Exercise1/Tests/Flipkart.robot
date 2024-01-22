*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}    http://127.0.0.1:4723/wd/hub
${AUTOMATION_NAME}    Uiautomator2
${PLATFORM_VERSION}    13
${PLATFORM_NAME}    Android
${DEVICE_NAME}    Rhythm's M13
${PACKAGE_NAME}    com.flipkart.android
${ACTIVITY_NAME}    com.flipkart.android.SplashActivity
${CART}    //android.widget.TextView[@text="Cart"]
${PLACEORDER}     //android.widget.TextView[@text="Place order "]
${TIMEOUT}    30s
${ITEM}    //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[1]/android.view.ViewGroup[4]/android.view.ViewGroup

${SECTION}  //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[4]/android.view.ViewGroup

${BUY}   //android.widget.TextView[@text="Buy now"]
${CONTIUNE}   //android.widget.TextView[@text="Continue"]
${SIZE}    //android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup

*** Keywords ***

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

Select Item

    sleep    5s
    Swipe   300    2200    300   150
    sleep    3s
    Swipe   300    2200    300   150
    sleep    2s
    Swipe   300    2200    300   150
    sleep    2s
    ${element_found}    Element Should Be Visible    ${SECTION}    timeout=${timeout}
    Run Keyword If    ${element_found}    Click Element    ${SECTION}
    ...    Else
    ...    Log    Element not found within the specified timeout


    Wait Until Element Is Visible   ${ITEM}    ${TIMEOUT}
    Click Element    ${ITEM}
    Wait Until Element Is Visible   ${BUY}    ${TIMEOUT}
    Click Element    ${BUY}
    Click Element    ${SIZE}

    Click Element    ${CONTIUNE}
    Click Element    ${CONTIUNE}

#Go to cart
#    Wait Until Element Is Visible   ${CART}    ${TIMEOUT}
#    Click Element    ${CART}
#    Wait Until Element Is Visible   ${PLACEORDER}    ${TIMEOUT}
#    Click Element    ${PLACEORDER}
#

