*** Keywords ***
Login web digipay
    [Arguments]   ${username}   ${password}
    Open Browser   ${url}   ${browser}
    Maximize Browser Window
    Set Selenium Speed   0.3
    Wait Until Element Is Visible   id=username   timeout=20s
    Input Text   id=username   ${username}
    Wait Until Element Is Visible   id=username   timeout=20s
    Input Password   id=password   ${password}
    Click Button   //*[@id="__next"]/div/div/form/button

xpath to click
    [Arguments]   ${xpath}
    Set Global Variable   ${xpath}

click menu
    Wait Until Element Is Visible   ${xpath}   timeout=20s
    Click Element   ${xpath}