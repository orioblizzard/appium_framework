*** Settings ***
Library      AppiumLibrary

*** Keywords ***
Open And Install Application
           open application        ${remoteUrl}
           ...                 automationName=UiAutomator2
           ...                 platformName=Android
           ...                 platformVersion=13
           ...                 udid=emulator-5554
           ...                 app=/Users/sutin/github/appium_framework/resouce/AxonsMove202410301313.apk
           ...                 autoGrantPermissions=true
#           ...                 appPackage=com.android.chrome
#           ...                 appActivity=com.google.android.apps.chrome.Main