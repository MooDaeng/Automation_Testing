*** Keywords ***
check field Transaction
# Show Text Transaction
    Wait Until Element Is Visible   //*[@id="__next"]/div/div[2]/div[2]/div[1]/div     timeout=20s
    ${transaction}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[1]/div 
    Should Be Equal As Strings   ${transaction}   Transactions
# Field 'Transaction ID or Order ID'    
    ${TID}   Get Element Attribute   //*[@id="formSearch"]/div[2]/div/input   placeholder          
    Should Be Equal As Strings   ${TID}   Transaction ID or Order ID
#Field 'MID'
    ${MID}   Get Element Attribute   //*[@id="formSearch"]/div[3]/div/input   placeholder          
    Should Be Equal As Strings   ${MID}   MID
#Field 'Card No last 4 digits'
    ${CardNo}   Get Element Attribute   //*[@id="formSearch"]/div[7]/div/input   placeholder          
    Should Be Equal As Strings   ${CardNo}   Card No last 4 digits
#Field 'Date'
    #start date
    ${start_date}   Get Element Attribute   //*[@id="formSearch"]/div[5]/div/div[1]/div/input   value 
    ${getnow}   Get Current Date   result_format=%m/%Y
    Should Be Equal As Strings   ${start_date}   01/${getnow}
    #current date
    ${current_date}   Get Element Attribute   //*[@id="formSearch"]/div[5]/div/div[2]/div/input   value
    ${getnow2}   Get Current Date   result_format=%d/%m/%Y
    Should Be Equal As Strings   ${current_date}   ${getnow2}
#Field 'All Bank','All Card','All Status','Export','Search'
    @{INDEX}   Create List   All Payment Type   All Merchant   All Bank   All Card    All Status   Export   Search
    FOR   ${VALUE}   IN   @{INDEX}
        Wait Until Page Contains   ${VALUE}
    END

check field Transaction Detail
    # Show Text Transaction Detail
    Wait Until Element Is Visible   //*[@id="__next"]/div/div[2]/div[2]/div[1]/div   timeout=20s
    ${transaction}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[1]/div 
    Should Be Equal As Strings   ${transaction}   Transaction Detail
    # Field 'Transaction ID'    
    ${TID}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[2]/div[1]/div[1]/div[4]/div[1]/table/tbody/tr[1]/td[1]          
    Should Be Equal As Strings   ${TID}   Transaction ID:
    # Field 'Transaction Date'    
    ${TD}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[2]/div[1]/div[1]/div[4]/div[1]/table/tbody/tr[2]/td[1]       
    Should Be Equal As Strings   ${TD}   Transaction Date:
    # Field 'Amount'    
    ${amount}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[2]/div[1]/div[1]/div[4]/div[2]/table/tbody/tr[1]/td[1]     
    Should Be Equal As Strings   ${amount}   Amount:
    # Field 'status'    
    ${status}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[2]/div[1]/div[1]/div[4]/div[2]/table/tbody/tr[2]/td[1]    
    Should Be Equal As Strings   ${status}   Status:
    # Field 'Remark'    
    ${Remark}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[2]/div[1]/div[1]/div[4]/div[2]/table/tbody/tr[3]/td[1]
    Should Be Equal As Strings   ${Remark}   Remark:
    # Field 'Authorization Detail'    
    ${Authorization}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[2]/div[1]/div[3]/div[1]
    Should Be Equal As Strings   ${Authorization}   Authorization Detail
    # Field 'Payment Detail'    
    ${PaymentDetail}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[2]/div[1]/div[4]/div[1]
    Should Be Equal As Strings   ${PaymentDetail}   Payment Detail
    
check Voided Detail
    # Show Text Void Transaction
    Wait Until Element Is Visible   //*[@id="swal2-title"]   timeout=5s
    ${VoidTransaction}   Get Text   //*[@id="swal2-title"]
    Should Be Equal As Strings   ${VoidTransaction}   Void Transaction
    # Field 'Payment Detail' 
    @{locators}   Get Webelements   //*[@id="form-void"]/div[1]/div[1]
    FOR   ${locator}   IN   @{locators}
        ${name}     Get Text       ${locator}
        @{values}   Split String   ${name}  \n
        ${count}    Get Length     ${values}
        Should Be Equal As Strings   ${values}[0]   Transaction ID:
        Should Be Equal As Strings   ${values}[1]   $Amount:
    END
    # Field 'Reason'    
    ${Reason}   Get Element Attribute   //*[@id="txt-reason"]   placeholder          
    Should Be Equal As Strings   ${Reason}   Reason
    # Field 'Confirm Void'    
    ${ConfirmVoid}   Get Text   //*[@id="form-void"]/div[3]        
    Should Be Equal As Strings   ${ConfirmVoid}   Confirm Void
    # Field 'Transaction Activity'    
    ${TransactionActivity}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[2]/div[2]/div[1]     
    Should Be Equal As Strings   ${TransactionActivity}   Transaction Activity
    # Button 'Void'    
    ${Void}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[3]/div[1]/button    
    Should Be Equal As Strings   ${Void}   Void
    # Button 'Inquiry'    
    ${Inquiry}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[3]/div[2]/button     
    Should Be Equal As Strings   ${Inquiry}   Inquiry