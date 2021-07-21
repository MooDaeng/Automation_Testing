*** Keywords ***
click menu Transactions and choose Transaction status = Approved
    Click Element   //*[@id="formSearch"]/div[1]/div/select
    Click Element   //*[contains(text(),'FULL')]
    Click Element   //*[@id="formSearch"]/div[10]/div/select
    Click Element   //*[contains(text(),'Approved')]

    # ${getday}   Get Current Date   result_format=%a
    # Run Keyword If    '${getday}'== 'Sat' or '${getday}'== 'Sun'  Search single date sat-sun
    # ...     ELSE  Search single date mon-fri

    # ${getnow}  Get Current Date   result_format=%d
    # Click Element   //*[@id="formSearch"]/div[5]/div/div[1]/div/input
    # Wait Until Element Is Visible   //*[@class="react-datepicker__day react-datepicker__day--0${getnow} react-datepicker__day--today"]
    # Click Element   //*[@class="react-datepicker__day react-datepicker__day--0${getnow} react-datepicker__day--today"]
    # Click Element   ${Search}
    # Click Element   //*[@id="__next"]/div/div[2]/div[2]/div[3]/table/tbody/tr[1]

click button 'Voided'
    Click Element   //*[@id="__next"]/div/div[2]/div[2]/div[3]/div[1]/button

click button 'Cancel'
    Click Element   //*[@id="bt-void-cancel"]

Input Reason & VOID ME
    [Arguments]  ${reason}  ${confirm}
    Input Text   //*[@id="txt-reason"]    ${reason}
    Input Text   //*[@id="txt-confirm"]   ${confirm}

click button 'Voided' on pop-up
    Click Element   //*[@id="bt-void-confirm"]
    Wait Until Element Is Visible   //*[@id="swal2-title"]   timeout=5s
    ${timeout}   Get Text   //*[@id="swal2-title"]
    Should Be Equal As Strings   ${timeout}   Error
    Click Element   //*[contains(text(),'OK')]

Input Reason 
    [Arguments]  ${reason}
    Input Text   //*[@id="txt-reason"]   ${reason}
    ${getDisable}=  Get Element Attribute   //*[@id="bt-void-confirm"]   disabled
    Should Be Equal As Strings   ${getDisable}   true

Input non-VOID ME
    [Arguments]  ${confirm}
    Input Text   //*[@id="txt-confirm"]   ${confirm}
    ${getDisable}  Get Element Attribute   //*[@id="bt-void-confirm"]   disabled
    Should Be Equal As Strings   ${getDisable}   true

