*** Keywords ***
click button 'New Merchant'
    Click Element   //*[@id="__next"]/div/div[2]/div[2]/div[1]/div[2]/div/button

Input text field Merchant Name (EN)
    ${nameEN}   Generate Random String   12   [LETTERS]
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${nameEN}
    ${check_nameEN}   Set Variable   ${nameEN}
    Set Global Variable   ${check_nameEN}

Input text field Merchant Name (TH)
    ${nameTH}   Generate Random String   12   [LETTERS]
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${nameTH}
    ${check_nameTH}   Set Variable   ${nameTH}
    Set Global Variable   ${check_nameTH}

choose choice on dropdown field 'Bussiness Type'
    Wait Until Element Is Visible   //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[4]/div[2]/div[2]/div   timeout=5s
    Click Element   //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[4]/div[2]/div[2]/div
    @{locators}   Get Webelements   ${xpath}
    FOR   ${locator}   IN   @{locators}
        ${name}   Get Text   ${locator}
        @{values}    Split String   ${name}   \n
        ${count}     Get Length     ${values}
        ${ran_int}   Evaluate   random.randint(0, ${count}-1)   random
        Click Element   //*[contains(text(),'${values}[${ran_int}]')]
        ${check_Bussiness}   Set Variable   ${values}[${ran_int}]
        Set Global Variable   ${check_Bussiness}
    END

Input text field 'Tax No'
    ${TaxNo}   Generate Random String   13   [NUMBERS]
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${TaxNo}
    ${check_TaxNo}   Set Variable   ${TaxNo}
    Set Global Variable   ${check_TaxNo}

Input text field 'Phone No'
    ${phone}   Generate Random String   8   [NUMBERS]
    ${check_phone}   Set Variable   09${phone}
    Set Global Variable   ${check_phone}
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${check_phone}

Input text field 'Email'
    ${Email}   Generate Random String   7   [LOWER]
    ${check_Email}   Set Variable   ${Email}@gmail.com
    Set Global Variable   ${check_Email}
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${check_Email}

Input text field 'Address (EN)'
    ${AddressEN}    Generate Random String   3   [LOWER]
    ${AddressNUM}   Generate Random String   2   [NUMBERS]
    ${check_AddressEN}   Set Variable   ${AddressEN} ${AddressNUM}
    Set Global Variable   ${check_AddressEN}
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${check_AddressEN}   

Input text field 'Address (TH)'
    ${AddressTH}    Generate Random String   3   [LOWER]
    ${AddressNUM}   Generate Random String   2   [NUMBERS]
    ${check_AddressTH}   Set Variable   ${AddressTH} ${AddressNUM}
    Set Global Variable   ${check_AddressTH}
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${check_AddressTH}

choose choice on dropdown field 'Province'
    Wait Until Element Is Visible   //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[7]/div/div/div   timeout=5s
    Click Element   //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[7]/div/div/div
    @{locators}   Get Webelements   ${xpath}
    FOR   ${locator}   IN   @{locators}
        ${name}     Get Text       ${locator}
        @{values}   Split String   ${name}   \n
        ${count}    Get Length     ${values}
        ${ran_int}  Evaluate   random.randint(0, ${count}-1)   random
        Click Element   //*[contains(text(),'${values}[${ran_int}]')]
        ${check_Province}   Set Variable    ${values}[${ran_int}]
        Set Global Variable   ${check_Province}
    END

# click button 'Tax Invoice Detail'
#     Wait Until Element Is Visible   //*[@id="__next"]/div/div[2]/div[2]/form/div[3]/div[4]/div/div[2]   timeout=20s
#     Click Element  //*[@id="__next"]/div/div[2]/div[2]/form/div[3]/div[4]/div/div[2]

Input text field Tax 'Address (EN)'
    ${AddressEN}    Generate Random String   3   [LOWER]
    ${AddressNUM}   Generate Random String   2   [NUMBERS]
    ${check_taxAddressEN}   Set Variable   ${AddressEN} ${AddressNUM}
    Set Global Variable   ${check_taxAddressEN}
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${check_taxAddressEN}   

Input text field Tax 'Address (TH)'
    ${AddressTH}    Generate Random String   3   [LOWER]
    ${AddressNUM}   Generate Random String   2   [NUMBERS]
    ${check_taxAddressTH}   Set Variable   ${AddressTH} ${AddressNUM}
    Set Global Variable   ${check_taxAddressTH}
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${check_taxAddressTH}

choose choice on dropdown field 'Tax Province'
    Wait Until Element Is Visible   //*[@id="__next"]/div/div[2]/div[2]/form/div[3]/div[6]/div/div/div/div[1]   timeout=20s
    Click Element   //*[@id="__next"]/div/div[2]/div[2]/form/div[3]/div[6]/div/div/div/div[1]
    @{locators}   Get Webelements   ${xpath}
    FOR   ${locator}   IN   @{locators}
        ${name}     Get Text       ${locator}
        @{values}   Split String   ${name}   \n
        ${count}    Get Length     ${values}
        ${ran_int}  Evaluate   random.randint(0, ${count}-1)   random
        Click Element   //*[contains(text(),'${values}[${ran_int}]')]
        ${check_taxProvince}   Set Variable   ${values}[${ran_int}]
        Set Global Variable   ${check_taxProvince}
    END

choose choice on dropdown field 'Bank Account'
    Wait Until Element Is Visible   //*[@id="__next"]/div/div[2]/div[2]/form/div[4]/div[4]/div[1]/div/div/div   timeout=20s
    Click Element   //*[@id="__next"]/div/div[2]/div[2]/form/div[4]/div[4]/div[1]/div/div/div
    @{locators}   Get Webelements   ${xpath}
    FOR   ${locator}   IN   @{locators}
        ${name}     Get Text       ${locator}
        @{values}   Split String   ${name}   \n
        ${count}    Get Length     ${values}
        ${ran_int}  Evaluate   random.randint(0, ${count}-1)   random
        Click Element   //*[contains(text(),'${values}[${ran_int}]')]
        ${check_BankAcc}   Set Variable   ${values}[${ran_int}]
        Set Global Variable   ${check_BankAcc}
    END

choose Absorb
    ${check_absorb}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[5]/div[2]/div/div/div/div[1]/div[1]
    Set Global Variable   ${check_absorb}
    
Input text field 'Bank Account No.'
    ${bankAccNo}   Generate Random String   12   [NUMBERS]
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${bankAccNo}
    ${check_bankAccNo}   Set Variable   ${bankAccNo}
    Set Global Variable   ${check_bankAccNo}

Input text field 'Bank Account No.' more than 13
    ${bankAccNo}   Generate Random String   13   [NUMBERS]
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${bankAccNo}
    ${GetBankNo}   Get Element Attribute   ${xpath}   value
    ${GetLenght}   Get Length   ${GetBankNo}
    Should Be Equal As Strings   ${GetLenght}   12

Input text field 'Username'
    ${Username}   Generate Random String   12   [LOWER]
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${Username}
    ${check_Username}   Set Variable   ${Username}
    Set Global Variable   ${check_Username}

Input text field 'First name'
    ${fname}   Generate Random String   12   [LOWER]
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${fname}
    ${check_fname}   Set Variable   ${fname}
    Set Global Variable   ${check_fname}

Input text field 'Last name'
    ${lname}   Generate Random String   12   [LOWER]
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${lname}
    ${check_lname}   Set Variable   ${lname}
    Set Global Variable   ${check_lname}

Input text field 'Email 2'
    ${Email}   Generate Random String   12   [LOWER]
    ${check_Email2}   Set Variable   ${Email}@gmail.com
    Set Global Variable   ${check_Email2}
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${check_Email2}

Input text field 'Phone No. 2'
    ${phone}   Generate Random String   8   [NUMBERS]
     ${check_phone2}   Set Variable   09${phone}
    Set Global Variable   ${check_phone2}
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${check_phone2}  

Input text field 'Phone No. 2' by Charactor
    ${phone}   Generate Random String   8   [LOWER]
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${phone} 
    ${GetPhone}    Get Element Attribute   ${xpath}   value
    ${GetLenght}   Get Length   ${GetPhone}
    Should Be Equal As Strings   ${GetLenght}   0

click 'Next' button page New Profile
    Click Button   //*[@id="__next"]/div/div[2]/div[2]/form/div[7]/div[2]/button
    Wait Until Page Contains   Payment Profile

click button 'Payment Type'
    Wait Until Element Is Visible   //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[4]/div/div[1]   timeout=5s
    Click Element   //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[4]/div/div[1]

Input text field 'Payment Profile Name'
    ${Paymentname}   Generate Random String   12   [LOWER]
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${Paymentname}
    ${check_Paymentname}   Set Variable   ${Paymentname}
    Set Global Variable   ${check_Paymentname}

Input text field 'MRD'
    [Arguments]   ${MRD}
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${MRD}
    ${check_MRD}   Set Variable   ${MRD}
    Set Global Variable   ${check_MRD}

choose choice on dropdown field 'Bank'
    Wait Until Element Is Visible   //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[7]/div[1]/div[1]/div/div/div   timeout=5s
    Click Element   //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[7]/div[1]/div[1]/div/div/div
    @{locators}   Get Webelements   ${xpath}
    FOR   ${locator}   IN   @{locators}
        ${name}     Get Text       ${locator}
        @{values}   Split String   ${name}   \n
        ${count}    Get Length     ${values}
        ${ran_int}  Evaluate   random.randint(0, ${count}-1)   random
        Click Element   //*[contains(text(),'${values}[${ran_int}]')]
        ${Bank}   Set Variable   ${values}[${ran_int}]
        ${check_Bank}   Set Variable   ${Bank}
        Set Global Variable   ${check_Bank}
    END

choose choice on dropdown field 'MID'
    Wait Until Element Is Visible   //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[7]/div[1]/div[2]/div/div/div   timeout=20s
    Click Element   //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[7]/div[1]/div[2]/div/div/div
    @{locators}   Get Webelements   ${xpath}
    FOR   ${locator}   IN   @{locators}
        ${name}     Get Text       ${locator}
        @{values}   Split String   ${name}   \n
        ${count}    Get Length     ${values}
        ${ran_int}  Evaluate    random.randint(0, ${count}-1)    random
        Click Element   //*[contains(text(),'${values}[${ran_int}]')]
        ${MID}   Set Variable   ${values}[${ran_int}]
        Set Global Variable   ${MID}
    END

click 'Next' button page Payment Profile
    Wait Until Element Is Visible   //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[2]/div[2]/button   timeout=5s
    Click Button   //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[2]/div[2]/button
    Wait Until Page Contains   Summary

ARROW UP
    Press Keys   //*[@id="__next"]/div/div[2]/div[2]/div[1]/div   ALT+ARROW_UP

check alert
    ${message}   Handle Alert
    Should Be Equal As Strings   ${message}   Do you want to leave?

check timeout 
    Wait Until Page Contains   Warning   timeout=550s
    Click Element   //*[contains(text(),'Continue Session')]

check Add field MID
    Click Element   ${xpath}
    Page Should Contain Element   //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[8]
    Sleep  1s
    Click Element   //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[8]/div[4]/i

check Add field Payment Profile
    Click Element   ${xpath}
    Page Should Contain Element   //*[@id="__next"]/div/div[2]/div[2]/form/div[2]
    Sleep  1s
    Click Element   //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[9]

click Back button page Summary
    Wait Until Element Is Visible   //*[@id="__next"]/div/div[2]/div[2]/div[10]/div[1]/button   timeout=5s
    Click Button   //*[@id="__next"]/div/div[2]/div[2]/div[10]/div[1]/button
    Wait Until Page Contains   Payment Profile

click Back button page Payment Profile
    Wait Until Element Is Visible  //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[2]/div[1]/button   timeout=5s
    Click Button   //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[2]/div[1]/button
    Wait Until Page Contains   Merchant Profile

Success
    ${message}   Get Text   //*[@id="swal2-title"]    
    Should Be Equal As Strings   ${message}   Success

input MRD > 99.99
    [Arguments]   ${INDEX}
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${INDEX}
    ${message}   Get Element Attribute   ${xpath}   value
    Should Be Equal As Strings   ${message}   99.99
  
input MRD < 0
    [Arguments]   ${INDEX}
    Click Element   ${xpath}               
    Input Text   ${xpath}   ${INDEX}
    ${message}   Get Element Attribute   ${xpath}   value
    Should Be Equal As Strings   ${message}   00
    
Input duplicate Email
    Click Element   ${xpath}               
    Input Text   ${xpath}   perayuththanyanon@gmail.com

check duplicate Email
    Wait Until Element Is Visible   //*[@id="swal2-content"]
    Wait Until Page Contains   User's Email is duplicated.
    Click Element   //*[contains(text(),'OK')]

Input duplicate Username
    Click Element   ${xpath}               
    Input Text   ${xpath}   digipay_admin

check duplicate Username
    Wait Until Element Is Visible   //*[@id="swal2-content"]
    Wait Until Page Contains   Username is duplicated.
    Click Element   //*[contains(text(),'OK')]

click button 'Confirm'
    Click Element   //*[@id="__next"]/div/div[2]/div[2]/div[10]/div[2]/button