*** Keywords ***
check field New merchant detail
#show text 'Merchant Name (EN)'
    ${merchantEN}   Get Text   //html/body/div/div/div[2]/div[2]/form/div[1]/div[4]/div[1]/div[1]/label
    # Log To Console   ${merchantEN} 
    Should Be Equal As Strings   ${merchantEN}   Merchant Name (EN)
#show text 'Merchant Name (TH)'
    ${merchantTH}   Get Text   //html/body/div/div/div[2]/div[2]/form/div[1]/div[4]/div[2]/div[1]/label
    # Log To Console   ${merchantTH} 
    Should Be Equal As Strings   ${merchantTH}   Merchant Name (TH)
#show text 'Bussiness Type'
    ${BussinessType}   Get Text   //html/body/div/div/div[2]/div[2]/form/div[1]/div[4]/div[2]/div[2]/label
    # Log To Console   ${BussinessType} 
    Should Be Equal As Strings   ${BussinessType}   Bussiness Type
#show text 'Tax No'
    ${TaxNo}   Get Text   //html/body/div/div/div[2]/div[2]/form/div[1]/div[4]/div[2]/div[3]/label
    # Log To Console   ${TaxNo} 
    Should Be Equal As Strings   ${TaxNo}   Tax No
#show text 'Phone No'
    ${PhoneNo}   Get Text   //html/body/div/div/div[2]/div[2]/form/div[2]/div[4]/div[1]/div/label
    # Log To Console   ${PhoneNo} 
    Should Be Equal As Strings   ${PhoneNo}   Phone No
#show text 'Email'
    ${Email}   Get Text   //html/body/div/div/div[2]/div[2]/form/div[2]/div[4]/div[2]/div/label
    # Log To Console   ${Email} 
    Should Be Equal As Strings   ${Email}   Email
#show text 'Adress (TH)'
    ${AdressEN}   Get Text   //html/body/div/div/div[2]/div[2]/form/div[2]/div[6]/div[1]/div[1]/label
    # Log To Console   ${AdressEN} 
    Should Be Equal As Strings   ${AdressEN}   Adress (EN)
#show text 'Adress (TH)'
    ${AdressTH}   Get Text   //html/body/div/div/div[2]/div[2]/form/div[2]/div[6]/div[1]/div[2]/label
    # Log To Console   ${AdressTH} 
    Should Be Equal As Strings   ${AdressTH}   Adress (TH)
#show text 'District'
    ${Province}   Get Text   //html/body/div/div/div[2]/div[2]/form/div[2]/div[7]/label
    # Log To Console   ${Province} 
    Should Be Equal As Strings   ${Province}   Sub District, District, Province, Postal Code
#show text 'Tax Invoice Detail'
    ${TaxInvoice}   Get Text   //html/body/div/div/div[2]/div[2]/form/div[3]/div[1]
    # Log To Console   ${TaxInvoice} 
    Should Be Equal As Strings   ${TaxInvoice}   Tax Invoice Detail
#show text 'Bank Account'
    ${BankAcc}   Get Text   //html/body/div/div/div[2]/div[2]/form/div[4]/div[4]/div[1]/label
    # Log To Console   ${BankAcc} 
    Should Be Equal As Strings   ${BankAcc}   Bank Account
#show text 'Bank Account No.'
    ${BankAccNo}   Get Text   //html/body/div/div/div[2]/div[2]/form/div[4]/div[4]/div[2]/label
    # Log To Console   ${BankAccNo} 
    Should Be Equal As Strings   ${BankAccNo}   Bank Account No.
#show text 'Username'
    ${Username}   Get Text   //html/body/div/div/div[2]/div[2]/form/div[5]/div[4]/label
    # Log To Console   ${Username} 
    Should Be Equal As Strings   ${Username}   Username
#show text 'Firstname'
    ${Firstname}   Get Text   //html/body/div/div/div[2]/div[2]/form/div[5]/div[5]/div[1]/label
    # Log To Console   ${Firstname} 
    Should Be Equal As Strings   ${Firstname}   Firstname
#show text 'Lastname'
    ${Lastname}   Get Text   //html/body/div/div/div[2]/div[2]/form/div[5]/div[5]/div[2]/label
    # Log To Console   ${Lastname} 
    Should Be Equal As Strings    ${Lastname}   Lastname
#show text 'Email'
    ${Email}   Get Text   //html/body/div/div/div[2]/div[2]/form/div[5]/div[6]/div[1]/label
    # Log To Console   ${Email} 
    Should Be Equal As Strings   ${Email}   Email
#show text 'Email'
    ${PhoneNo}   Get Text   //html/body/div/div/div[2]/div[2]/form/div[5]/div[6]/div[2]/label
    # Log To Console   ${PhoneNo} 
    Should Be Equal As Strings   ${PhoneNo}   Phone No

check field page merchant
# Show Text Merchants
    Wait Until Element Is Visible   //*[@id="__next"]/div/div[2]/div[2]/div[1]/div[1]     timeout=20s
    ${TextMerchant}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[1]/div[1]
    # Log To Console   ${TextMerchant}
    Should Be Equal As Strings    ${TextMerchant}   Merchants
#show text 'Partner ID'
    ${PartnerID}   Get Element Attribute   //*[@id="formSearch"]/div[1]/div/input   placeholder    
    # Log To Console   ${PartnerID}  
    Should Be Equal As Strings   ${PartnerID}   Partner ID
    
#show text 'Merchant Name'
    ${MerchantName}   Get Element Attribute   //*[@id="formSearch"]/div[2]/div/input   placeholder      
    # Log To Console   ${MerchantName}     
    Should Be Equal As Strings   ${MerchantName}   Merchant Name
#show text 'MID'
    ${MID}   Get Element Attribute   //*[@id="formSearch"]/div[4]/div/input   placeholder 
    # Log To Console   ${MID}          
    Should Be Equal As Strings   ${MID}   MID
#show text 'New Merchant'
    ${newMerchant}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[1]/div[2]/div/button
    # Log To Console   ${newMerchant} 
    Should Be Equal As Strings   ${newMerchant}   New Merchant
#show text 'Export'
    ${Export}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[2]/div/button[1]
    # Log To Console   ${Export} 
    Should Be Equal As Strings   ${Export}   Export
#show text 'Search'
    ${SearchButton}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[2]/div/button[2]
    # Log To Console   ${SearchButton} 
    Should Be Equal As Strings   ${SearchButton}   Search

check data in Summary page
    ${get_nameEN}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[3]/div[4]/div[2]/table/tbody/tr[1]/td[2]
    Should Be Equal As Strings   ${get_nameEN}   ${check_nameEN}
    # Log To Console   ${check_nameEN}

    ${get_nameTH}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[3]/div[4]/div[2]/table/tbody/tr[2]/td[2]
    Should Be Equal As Strings   ${get_nameTH}    ${check_nameTH}
    # Log To Console   ${check_nameTH}

    ${get_Bussiness}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[3]/div[4]/div[2]/table/tbody/tr[3]/td[2]
    Should Be Equal As Strings   ${get_Bussiness}    ${check_Bussiness}
    # Log To Console   ${check_Bussiness}

    ${get_TaxNo}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[3]/div[4]/div[2]/table/tbody/tr[4]/td[2]
    Should Be Equal As Strings   ${get_TaxNo}   ${check_TaxNo}
    # Log To Console   ${check_TaxNo}

    ${get_AddressEN}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[4]/div[4]/div[1]/table/tbody/tr[1]/td[2]
    Should Be Equal As Strings   ${get_AddressEN}   ${check_AddressEN}
    # Log To Console   ${check_AddressEN}

    ${get_AddressTH}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[4]/div[4]/div[1]/table/tbody/tr[2]/td[2]
    Should Be Equal As Strings   ${get_AddressTH}   ${check_AddressTH}
    # Log To Console   ${check_AddressTH}

    ${get_phone}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[4]/div[4]/div[2]/table/tbody/tr[1]/td[2]
    Should Be Equal As Strings   ${get_phone}   ${check_phone}
    # Log To Console   ${check_phone}

    ${get_Email}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[4]/div[4]/div[2]/table/tbody/tr[2]/td[2]
    Should Be Equal As Strings   ${get_Email}   ${check_Email}
    # Log To Console  ${check_Email}

    ${get_Province}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[4]/div[4]/div[1]/table/tbody/tr[5]/td[2]
    Should Be Equal As Strings   ${get_Province}   ${check_Province}
    # Log To Console  ${check_Province}

    ${get_taxAddressEN}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[5]/div[4]/table/tbody/tr[1]/td[2]
    Should Be Equal As Strings   ${get_taxAddressEN}   ${check_taxAddressEN}
    # Log To Console  ${check_taxAddressEN}

    ${get_taxAddressTH}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[5]/div[4]/table/tbody/tr[2]/td[2]
    Should Be Equal As Strings   ${get_taxAddressTH}   ${check_taxAddressTH}
    # Log To Console  ${check_taxAddressTH}

    ${get_TaxProvince}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[5]/div[4]/table/tbody/tr[5]/td[2]
    Should Be Equal As Strings   ${get_TaxProvince}   ${check_taxProvince}
    # Log To Console  ${check_taxProvince}

    ${get_BankAcc}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[6]/div[4]/table/tbody/tr[1]/td[2]/span
    Should Be Equal As Strings   ${get_BankAcc}   ${check_BankAcc}
    # Log To Console  ${check_BankAcc}

    ${get_BankAccNo}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[6]/div[4]/table/tbody/tr[2]/td[2]
    Should Be Equal As Strings   ${get_BankAccNo}   ${check_BankAccNo}
    # Log To Console  ${check_BankAccNo}

    ${get_Username}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[7]/div[4]/table/tbody/tr[1]/td[2]
    Should Be Equal As Strings   ${get_Username}   ${check_Username}
    # Log To Console  ${check_Username}

    ${get_fname}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[7]/div[4]/table/tbody/tr[2]/td[2]
    Should Be Equal As Strings   ${get_fname}   ${check_fname}
    # Log To Console  ${check_fname}

    ${get_lname}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[7]/div[4]/table/tbody/tr[3]/td[2]
    Should Be Equal As Strings   ${get_lname}   ${check_lname}
    # Log To Console  ${check_lname}

    ${get_Email2}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[7]/div[4]/table/tbody/tr[4]/td[2]
    Should Be Equal As Strings   ${get_Email2}   ${check_Email2}
    # Log To Console  ${check_Email2}

    ${get_phone2}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[7]/div[4]/table/tbody/tr[5]/td[2]
    Should Be Equal As Strings   ${get_phone2}   ${check_phone2}
    # Log To Console  ${check_phone2}
    # Log To Console  ${Payment Type}

    ${get_Paymentname}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[9]/div[4]/table/tbody/tr[2]/td[2]
    Should Be Equal As Strings   ${get_Paymentname}   ${check_Paymentname}
    # Log To Console  ${check_Paymentname}
   
   
    
    ${get_MRD}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[9]/div[5]/div/div[1]/div[1]/div[2]/div[2]/div[3]
    Should Be Equal As Strings   ${get_MRD}   ${check_MRD} %
    # Log To Console  ${check_MRD}

    ${get_absorb}   Get Text   //*[@id="__next"]/div/div[2]/div[2]/div[9]/div[4]/table/tbody/tr[3]/td[2]
    Should Be Equal As Strings   ${get_absorb}   ${check_absorb}   
    # Log To Console  ${check_absorb}
