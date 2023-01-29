*** Settings ***
Library                     SeleniumLibrary
Library                     RequestsLibrary


*** Variables ***
${URL}                          http://aloware.com/#
${start_free}                   //a[contains(@title,'Get a demo')]
${logo_home}                    //img[contains(@height,'38')]
${name}                         //input[contains(@placeholder,'Full Name*')]
${my_input_name}                Test Automation
${email}                        //input[contains(@placeholder,'Company email*')]
${my_input_email}               testemail@gmail.com
${company_name}                 //input[contains(@name,'company')]
${my_input_company}             Own
${drop_b_tsize}                 //select[contains(@class,'hs-input is-placeholder')]
${input_size}                   4 - 10
${drop_b_c_phone}               phone_ext-90baad40-32f2-4992-9f98-a4d3ea6f938e
${my_country_phone}             PT
${input_phone}                  //input[@placeholder='*']
${my_input_numcountry}          999999999
${button_start}                 //input[contains(@value,'Start Free Trial')]
${book_pg}                    //div[@class="meetings-iframe-container"]//iframe
${success}                     Page Booking Success
${pg_fail}                     Page Booking Fail to Load
${timeout}                      5





*** Keywords ***
Open the browser
    Open Browser                     url=${URL}         browser=Headless Chrome
    Maximize Browser Window
Close the browser   
    Capture Page Screenshot
    Close Browser

#TC-01
Access the Aloware home page
    Wait Until Element Is Visible    ${logo_home}          ${timeout}
    Capture Element Screenshot       ${logo_home}

Reach START FOR FREE
    Click Element                     ${start_free}
    
When I fill my registration data 
    Wait Until Element Is Visible     ${name}                    ${timeout}
    Input Text                        ${name}                    ${my_input_name}
    Input Text                        ${email}                   ${my_input_email}
    Input Text                        ${company_name}            ${my_input_company}        
    Select From List By Value         ${drop_b_tsize}            ${input_size}   
    Select From List By Value         ${drop_b_c_phone}          ${my_country_phone} 
    Input Text                        ${input_phone}             ${my_input_numcountry} 

And click on "Start Free Trial"
    Click Element                     ${button_start}
I can see a msg "${book_msg}"
    Select Frame                      ${book_pg}
    Page Should Contain               ${book_msg}
    Log To Console                    ${book_msg}