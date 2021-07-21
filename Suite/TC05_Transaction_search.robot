*** Settings ***
Resource                  main.robot

*** Test Case ***
# -------------- Search Transaction ----------------
TC_05-01 Click mune 'Transaction'
    Login web digipay           #Username  Password
    xpath to click   //*[@id="sidebar"]/nav/li[2]
    click menu
    check field Transaction

TC_05-02 Search ด้วย field ว่าง
    Search by field empty

TC_05-03 Click on field 'All payment type'
    xpath to click    //*[@id="formSearch"]/div[1]/div/select
    click on field Dropdown    All Payment Type   INSTALLMENT   FULL   QR PP TAG30

TC_05-04 search field 'Transactions ID' full search 
    xpath to click     //*[@id="formSearch"]/div[2]/div/input
    Search text field  20210120190238425716

TC_05-05 search 'Transactions ID' partial search (1 - n ตัว)
    xpath to click     //*[@id="formSearch"]/div[2]/div/input
    Search text field  1233455

TC_05-06 search field 'MID' full
    xpath to click     //*[@id="formSearch"]/div[3]/div/input
    Search text field  0388675541

TC_05-07 search field 'MID' numic partial search (1 - 8 ตัว)
    xpath to click     //*[@id="formSearch"]/div[3]/div/input
    Search text field  03841

TC_05-08 Click on field 'All Merchant'
    xpath to click    //*[@id="formSearch"]/div[4]/div/select
    click on field 'All Merchant'

TC_05-09 search field 'card No last 4 digits' full
    xpath to click     //*[@id="formSearch"]/div[7]/div/input
    Search text field  0002

TC_05-10 search field 'card No ' search numic partial (1 - 3 ตัว)
    xpath to click     //*[@id="formSearch"]/div[7]/div/input
    Search text field  12  000

TC_05-11 click on field 'All Bank'
    xpath to click    //*[@id="formSearch"]/div[8]/div/select
    click on field Dropdown    All Bank  BAY  KBANK  KTC  SCB  TMB

TC_05-12 click on field Crad
    xpath to click    //*[@id="formSearch"]/div[9]/div/select
    click on field Dropdown    All Card  AMEX  JCB  MASTERCARD  UNIONPAY  VISA 

TC_05-13 click on field Status
    xpath to click    //*[@id="formSearch"]/div[10]/div/select
    click on field Dropdown    All Status  Requested  Pending  Pre-Authorized  Approved  Failed  Canceled  Settled  Voided 

TC_05-14 search filed single date 
    Search single date
    
TC_05-15 search field rang date 
    Search range date
    Close Browser