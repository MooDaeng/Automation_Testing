*** Settings ***
Resource                  main.robot

*** Test Case ***
# -------------- Search Transaction ----------------
TC_06-01 Click mune 'Merchant'
    Login web digipay          #Username  Password
    xpath to click  //*[@id="sidebar"]/nav/li[3]
    click menu
    check field page merchant
    
TC_06-02 Click and Search field 'Partner ID' full
    xpath to click     //*[@id="formSearch"]/div[1]/div/input
    Search text field  1611118666

TC_06-03 Click and Search field 'Partner ID' numic partial (1-9 ตัว)
    xpath to click     //*[@id="formSearch"]/div[1]/div/input
    Search text field  1611

TC_06-04 Click and Search field 'Merchant Name' full
    xpath to click     //*[@id="formSearch"]/div[2]/div/input
    Search text field  DIGIO TEST

TC_06-05 Click and Search field 'Merchant Name' search (1 -n ตัว)
    xpath to click     //*[@id="formSearch"]/div[2]/div/input
    Search text field  DIGIO

TC_06-06 Click and Search field 'MID'
    xpath to click     //*[@id="formSearch"]/div[4]/div/input
    Search text field  0388675541

TC_06-07 Click and Search field 'MID' numic partial (1-5 ตัว)
    xpath to click     //*[@id="formSearch"]/div[4]/div/input
    Search text field  03886

TC_06-08 Click and Search field 'All Status'
    xpath to click     //*[@id="formSearch"]/div[5]/div/select
    click on field Dropdown     All Status   Active   Suspend
    Close Browser
