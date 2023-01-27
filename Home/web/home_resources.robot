*** Settings ***
Library                     SeleniumLibrary


*** Variables ***
${URL}                          http://aloware.com
${start_free}                   //a[contains(@class,'btn-hover-colored start-free-btn start-trigger')]
${logo_home}                    //img[contains(@height,'38')]
${name}                         //input[contains(@placeholder,'Full Name*')]
${my_input_name}                Test Automation
${email}                        //input[contains(@placeholder,'Company email*')]
${my_input_email}               testemail@email.com
${company_name}                 //input[contains(@name,'company')]
${my_input_company}             Own
${drop_b_tsize}                 //select[contains(@class,'hs-input is-placeholder')]
${input_size}                   4 - 10
${drop_b_c_phone}               //select[@class='hs-input']
${my_country_phone}             Portugal
${input_phone}                  //input[@placeholder='*']
${my_input_numcountry}          999999999
${button_start}                 //input[contains(@value,'Start Free Trial')]




*** Keywords ***
Open the browser
    Open Browser            browser=chrome
    Maximize Browser Window
Close the browser   
    Capture Page Screenshot
    Close Browser

#TC-01
Access the Aloware home page
    Go to     url=${URL}
    Wait Until Element Is Visible    ${logo_home}  

Reach START FOR FREE
    Click button                     ${start_free}
    
When I fill my registration data 
    Input Text                        ${my_input_name}           ${name}
    Input Text                        ${my_input_email}          ${email}
    Input Text                        ${my_input_company}        ${company_name}
    Select From List By Value         ${drop_b_tsize}            ${input_size}   
    Select From List By Value         ${drop_b_c_phone}          ${my_country_phone} 
    Input Text                        ${my_input_numcountry}     ${input_phone}

And click on "Start Free Trial"
    Click Button                      ${button_start}