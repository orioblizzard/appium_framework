*** Settings ***
Library     AppiumLibrary

*** Variables ***
${login.lbl.appName}        xpath=//android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.TextView[1]
${login.input.email}        xpath=//android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText
${login.icon.error}         class=com.horcrux.svg.PathView
${login.label.headMsg}      xpath=//android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.TextView[1]
${login.label.bodyMsg}      xpath=//android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.TextView[2]
${login.btn.ok}             accessibility_id=Ok

*** Keywords ***
#Action
Type Invalid Email And Assertion An Error Occurred
       input text       ${login.input.email}       Tester
       click element    accessibility_id=login

#Assert
Validate Alert
      wait until element is visible        ${login.icon.error}
      element text should be               ${login.label.headMsg}      An error occurred.
      element text should be               ${login.label.bodyMsg}      Press OK To Continue
      Element Attribute Should Match       ${login.btn.ok}             attr_name=content-desc       match_pattern=Ok

