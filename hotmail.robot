
*** Settings *** 
Documentation  Robot Framework
Library  SeleniumLibrary 

*** Variables *** 
${url}          https://hotmail.com
${browser}      headlessFirefox
${username}     john@hotmail.com
${password}     password123

*** Keywords *** 

Clicking Sign in
    Click Element  	                    link:Sign in 

Submitting Username
    Wait Until Element Is Visible                    id:i0116
    Input Text                          id:i0116            ${username} 
    Wait Until Element Is Visible                 id:idSIButton9
    Click Element  	                                  id:idSIButton9 
Submitting Password
    Wait Until Element Is Visible       id:i0118             timeout=5
    Input Text                                      id:i0118             ${password}
    Wait Until Element Is Visible                 id:idSIButton9
   Click Element  	                               id:idSIButton9

Verifying Login
    Wait Until Page Contains                                 john@hotmail.com

*** Test Cases *** 
Verify Successful Navigation 
    [documentation]  This test case check the navigation using Page Object 
    [tags]  Smoke  
    Open Browser                        ${url}               ${browser} 
    Maximize Browser Window 
    Clicking Sign in 
    Submitting Username 
	Submitting Password
	Verifying Login
	Close Browser