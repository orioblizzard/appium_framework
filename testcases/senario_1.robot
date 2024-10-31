*** Settings ***
Library      AppiumLibrary
Resource     /Users/sutin/github/appium_framework/Keywords/commons/common.robot
Resource     /Users/sutin/github/appium_framework/page/login.robot
Variables    /Users/sutin/github/appium_framework/resouce/config.yaml


*** Variables ***
${url} =   www.axonstech.co.th


*** Test Cases ***
#testcase1
#           Open And Install Application
#           Element Should Be Visible            accessibility_id=login
#           Wait until element is visible        accessibility_id=login
#           Element Attribute Should Match       accessibility_id=login      attr_name=content-desc       match_pattern=login
#
#           Input text    xpath=//android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText      text=teter

testcase2
        Open And Install Application
        Wait until element is visible        accessibility_id=login
        Type Invalid Email And Assertion An Error Occurred
        wait until element is visible        ${login.icon.error}
#        Validate Alert

*** Keywords ***
