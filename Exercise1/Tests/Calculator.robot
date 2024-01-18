*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}    http://127.0.0.1:4723/wd/hub
${AUTOMATION_NAME}    Uiautomator2
${PLATFORM_VERSION}    13
${PLATFORM_NAME}    Android
${DEVICE_NAME}    Rhythm's M13
${PACKAGE_NAME}    com.sec.android.app.popupcalculator
${ACTIVITY_NAME}    com.sec.android.app.popupcalculator.Calculator

${DIGIT-1.1}    //android.widget.Button[@content-desc="6"]
${DIGIT-1.2}    //android.widget.Button[@content-desc="7"]
${DIGIT-1.3}    //android.widget.Button[@content-desc="5"]
${DIGIT-2.1}    //android.widget.Button[@content-desc="2"]
${DIGIT-2.2}    //android.widget.Button[@content-desc="5"]
${PLUS}    //android.widget.Button[@content-desc="Plus"]
${MINUS}    //android.widget.Button[@content-desc="Minus"]
${MULTIPLY}    //android.widget.Button[@content-desc="Multiplication"]
${DIVISION}    //android.widget.Button[@content-desc="Division"]
${EQUAL}    //android.widget.Button[@content-desc="Equal"]
${MODULO}    //android.widget.Button[@content-desc="Percentage"]

*** Keywords ***
Perform Addition
    Click Element    ${DIGIT-1.1}
    Click Element    ${DIGIT-1.2}
    Click Element    ${DIGIT-1.3}
    Click Element    ${PLUS}
    CLick Element    ${DIGIT-2.1}
    Click Element    ${DIGIT-2.2}
    Click Element    ${EQUAL}

Perform Substrsction
    Click Element    ${DIGIT-1.1}
    Click Element    ${DIGIT-1.2}
    Click Element    ${DIGIT-1.3}
    Click Element    ${MINUS}
    CLick Element    ${DIGIT-2.1}
    Click Element    ${DIGIT-2.2}
    Click Element    ${EQUAL}

Perform Multiplication
    Click Element    ${DIGIT-1.1}
    Click Element    ${DIGIT-1.2}
    Click Element    ${DIGIT-1.3}
    Click Element    ${MULTIPLY}
    CLick Element    ${DIGIT-2.1}
    Click Element    ${DIGIT-2.2}
    Click Element    ${EQUAL}

Perform Division
    Click Element    ${DIGIT-1.1}
    Click Element    ${DIGIT-1.2}
    Click Element    ${DIGIT-1.3}
    Click Element    ${DIVISION}
    CLick Element    ${DIGIT-2.1}
    Click Element    ${DIGIT-2.2}
    Click Element    ${EQUAL}

Perform Percentage
    Click Element    ${DIGIT-1.1}
    Click Element    ${DIGIT-1.2}
    Click Element    ${DIGIT-1.3}
    Click Element    ${MODULO}
    CLick Element    ${DIGIT-2.1}
    Click Element    ${DIGIT-2.2}
    Click Element    ${EQUAL}

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

Perform Some Operation
    Perform Addition
    Perform Substrsction
    Perform Multiplication
    Perform Division
    Perform Percentage

