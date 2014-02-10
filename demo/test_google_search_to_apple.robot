*** Settings ***

Documentation  Tests searching Google and ending up on Apple.
...
Library    Selenium2Library
Library    GooglePageLibrary
Library    GoogleResultPageLibrary

*** Test Cases ***

Test Google To Apple
    Open Google Homepage
    Search Google Homepage For  Apple Computers
    On Google Result Page Click Result  1
    Title Should Be  Apple
    [Teardown]  Close Google Homepage