# IT'S A TEST PROJECT ON ALOWARE WEB SITE

This is an automation project  for the Aloware SOFTWARE, it's with [Robot Framework](https://robotframework.org/), aims to implement the project pattern to Page Objects and test cases written with [Gherkin](https://cucumber.io/docs/gherkin/reference/) or [Procedural], at the beginning of each test there is a information in the Documentation about the methodology to be used.

## The functional tests that will be executed manually in the PRD must follow the steps on the "Homepage - feature start for free.txt" file. For security reasons, All automated tests should follow this procedure as a sample template. ##

Robot's libraries encapsulate the most used testing tools on the market. To run the GUI tests on Web systems, the selenium library is been used [Selenium](https://www.selenium.dev/) and (https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html). To run GUI tests on mobile systems, the [Appium](https://appium.io), at this first moment, by decision of the managers, no tests or Mobile validations will be carried out. For API tests, the library of [Python requests](https://github.com/kennethreitz/requests), which provides all the necessary tools for HTTP requests, both for REST and SOAP.

## This automations is associated to ##
Its associated to the Test project sent on 2023/01/24, from Yaa Sefa-Boakye (yaa@aloware.com), to Theo Nicolas Araujo (theo.ng.araujo@gmail.com) 


## Project Configuration

Robot framework is built with Python, so it is necessary that you have the latest version of this technology installed on your machine and it can be found through the [Python official page](https://www.python.org/downloads/).

The installation of the framework and its auxiliary libraries is done through `pip`, Python's native library manager. Proceed with the command below:

```sh
$ pip install robotframework
```

And check if the installation went correctly:

```sh
$ robot --version
```

Next, install the libraries that will be used in the project using the `pip` command:
for example:
- [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary/)

# Before you run :#

## Web Test Setup ##
The tests may be run in two different modes, configured in separate files:

# How to copy this project into yours #
I'll let two ways, a zip file will besend by emmail; and in the Theo's Github, url:  https://github.com/NICOLASTHEO  


# Project Execution #
## How to run ##

To execute the scripts, execute the command below via terminal being inside the project's root directory, and passing as arguments the directory where the reports and execution logs will be inserted and the directory where the test scripts are.

```sh
$ robot -i home -d ..\reports -v BROWSER:headlesschrome home_tests.robot
```

## execution parameters ## 

## -tag (required) ##
BDD Tag to run testdriverPath

## -env (default: -env=dev) ##
local, dev, prd

## -browser (default: -browser=chrome ) ##
chrome, firefox, edge

## config (default: -config=support/config ) ##
Config directory path

## -driverPath ##
Path to the local browser driver

# Design standards and best practices #

To work on a Robot Framework project it is strongly recommended that the programmer constantly read its [documentation](https://robotframework.org/robotframework/#user-guide),  and be aware of the [Python design standards](https://python-patterns.guide/),  technology used to implement the framework.

The purpose of this approach is to build simple and readable scripts. For those who don't know the project easily understand it.

## Libraries used in the Project

In this project we are using the libraries below:
EXAMPLES:

[seleniumlibrary]:
pip install robotframework-seleniumlibrary

# If you from Aloware has any question you gonna call: 👻 #

- Theo Nicolas Araujo
- LinkedIn: https://www.linkedin.com/in/theo-araujo-45553246/