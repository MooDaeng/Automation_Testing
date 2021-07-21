*** Keywords ***
# ----------------------- click menu 'Transaction' ------------------------------
click on field Dropdown
    [Arguments]  @{INDEX}
    @{locators}   Get Webelements   ${xpath}
    FOR   ${locator}   IN   @{locators}
        ${name}     Get Text       ${locator}
        @{values}   Split String   ${name}   \n
        Should Be Equal As Strings   ${INDEX}   ${values}
    END
    FOR   ${VALUE}   IN   @{INDEX}
        Click Element   ${xpath} 
        Click Element   //*[contains(text(),'${VALUE}')]
        Click Element   ${Search}
    END
    Click Element    //*[contains(text(),'${INDEX}[0]')]

click on field 'All Merchant'
    @{locators}   Get Webelements   ${xpath}
    FOR   ${locator}   IN   @{locators}
        ${name}     Get Text       ${locator}
        @{values}   Split String   ${name}  \n
        ${count}    Get Length     ${values}
    END
    FOR   ${VALUE}   IN RANGE   0   4
        ${ran_int}=    Evaluate    random.randint(0, ${count}-1)    random
        Click Element   ${xpath}  
        Click Element   //*[contains(text(),'${values}[${ran_int}]')]
        Click Element   ${Search}
    END
    Click Element   //*[contains(text(),'${values}[0]')]

click on field Status
    @{locators}   Get Webelements   ${xpath}
    FOR   ${locator}   IN   @{locators}
        ${name}     Get Text       ${locator}
        @{values}   Split String   ${name}   \n
    END

Search by field empty
    Click Element   ${Search}

Search text field
    [Arguments]   @{INDEX}   
    FOR   ${VALUE}   IN   @{INDEX}       
        Click Element   ${xpath}               
        Input Text      ${xpath}    ${VALUE}
        Click Element   ${Search}
        Input Text      ${xpath}    0
        Press Keys      ${xpath}    BACK_SPACE
        Click Element   ${Search}
    END

Search single date mon-fri
    ${getnow}   Get Current Date   result_format=%d
    Click Element   //*[@id="formSearch"]/div[5]/div/div[1]/div/input
    Wait Until Element Is Visible   //*[@class="react-datepicker__day react-datepicker__day--0${getnow} react-datepicker__day--today"]
    Click Element   //*[@class="react-datepicker__day react-datepicker__day--0${getnow} react-datepicker__day--today"]  
#                     //*[@class="react-datepicker__day react-datepicker__day--001 react-datepicker__day--selected react-datepicker__day--today"]     #ขวา
                    # //*[@class="react-datepicker__day react-datepicker__day--001 react-datepicker__day--selected react-datepicker__day--today"]     #ซ้าย
    Click Element   ${Search}

Search single date sat-sun
    ${getnow}   Get Current Date   result_format=%d
    Click Element   //*[@id="formSearch"]/div[5]/div/div[1]/div/input
    Wait Until Element Is Visible   //*[@class="react-datepicker__day react-datepicker__day--0${getnow} react-datepicker__day--today react-datepicker__day--weekend"]
    Click Element   //*[@class="react-datepicker__day react-datepicker__day--0${getnow} react-datepicker__day--today react-datepicker__day--weekend"]
    Click Element   ${Search}

Search single date
    ${getday}   Get Current Date   result_format=%a
    Run Keyword If    '${getday}' == 'Sat' or '${getday}' == 'Sun'  Search single date sat-sun
    ...     ELSE  Search single date mon-fri

Search range date
    Click Element   //*[@id="formSearch"]/div[5]/div/div[1]/div/input
    Wait Until Element Is Visible   //*[@id="formSearch"]/div[5]/div/div[2]/div[2]/div/div/div[2]/div[2]/div[1]/div[1]   timeout=5s
    Click Element   //*[@id="formSearch"]/div[5]/div/div[2]/div[2]/div/div/div[2]/div[2]/div[1]/div[1]
    Click Element   ${Search}