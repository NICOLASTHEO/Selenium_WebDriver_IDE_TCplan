***Settings***
Documentation        This is a Test Suite for the software: https://aloware.com/
...                  Submit my data and book a presentaion meeting
...                  
Resource             home_resources.robot

Test Setup           Open the browser
Test Teardown        Close the browser

*** Test Cases ***
Scenario: On START FOR FREE, booking a presentation meeting clicking on the button "Start Free Trial"

    [Documentation]        #This test verify the main flow for booking a presentaion meeting
    [Tags]                 booking    home    start_for_free
	Access the Aloware home page
	Reach START FOR FREE
	When I fill my registration data
	And click on "Start Free Trial"
