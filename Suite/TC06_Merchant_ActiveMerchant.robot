*** Settings ***
Resource                  main.robot

*** Test Case ***
# --------------------------------------------------------- Merchant Profile ---------------------------------------------------------------------

TC06-09 login with Role Admin digio/User digio click menu Merchant
    Login web digipay          #Username  Password
    xpath to click   //*[@id="sidebar"]/nav/li[3]
    click menu
    click button 'New Merchant'

TC06-10 click menu Merchant and click at button "New merchant"
    check field New merchant detail

TC06-11 กรอกข้อมูลถูกต้องทุกฟิวด์
  #Input data in field 'Merchant Name (EN)'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[4]/div[1]/div[1]/div/input
    Input text field Merchant Name (EN)   #random
  #Input data in field 'Merchant Name (TH)'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[4]/div[2]/div[1]/div/input
    Input text field Merchant Name (TH)     #random
  #Input data in field 'Bussiness Type'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[4]/div[2]/div[2]/div/div/div[2]
    choose choice on dropdown field 'Bussiness Type'
  #Input data in field 'Tax No'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[4]/div[2]/div[3]/div/input
    Input text field 'Tax No'     #random
  #Input data in field 'Phone No'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[4]/div[1]/div/div/input
    Input text field 'Phone No' 
  #Input data in field 'Email'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[4]/div[2]/div/div/input
    Input text field 'Email'     #random
  #Input data in field 'Address (EN)'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[6]/div[1]/div[1]/div/input
    Input text field 'Address (EN)'  
  #Input data in field 'Address (TH)'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[6]/div[1]/div[2]/div/input
    Input text field 'Address (TH)'  
  #Input data in field 'Sub District, District, Province, Postal Code'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[7]/div/div/div[2]
    choose choice on dropdown field 'Province'
    Click Element  //*[@id="__next"]/div/div[2]/div[2]/form/div[3]/div[4]/div/div[1]
  #Input data in field 'Bank Account' 
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[4]/div[4]/div[1]/div/div/div[2]
    choose choice on dropdown field 'Bank Account'
  #Input data in field 'Bank Account No.'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[4]/div[4]/div[2]/div/input
    Input text field 'Bank Account No.'     #random
  #Input data in field 'Username'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[5]/div[4]/div/input
    Input text field 'Username'       #random
  #Input data in field 'First name'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[5]/div[5]/div[1]/div/input
    Input text field 'First name'       #random
  #Input data in field 'Last name'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[5]/div[5]/div[2]/div/input
    Input text field 'Last name'       #random
  #Input data in field 'Email.'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[5]/div[6]/div[1]/div/input
    Input text field 'Email 2'     #random
  #Input data in field 'Phone No.'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[5]/div[6]/div[2]/div/input
    Input text field 'Phone No. 2'    #random

TC05-12 ใน filed รายละเอียดใบกำกับภาษี เลือก ที่อยู่ใหม่
    ARROW UP
    Click Element  //*[@id="__next"]/div/div[2]/div[2]/form/div[3]/div[4]/div/div[2]
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[3]/div[5]/div[1]/div[1]/div/input
    Input text field Tax 'Address (EN)'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[3]/div[5]/div[1]/div[2]/div/input
    Input text field Tax 'Address (TH)'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[3]/div[6]/div/div/div[2]
    choose choice on dropdown field 'Tax Province'  # click button 'Tax Invoice Detail'
      
TC05-13 กด 'Next' page New merchant
    click 'Next' button page New Profile

# --------------------------------------------------------- Payment Profile --------------------------------------------------------------------

TC06-14 กรอกข้อมูลถูกต้องทุกฟิวด์
#click button 'Payment Type'
    click button 'Payment Type'  
#Input data in field 'Payment Profile Name'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[5]/div[1]/div/input
    Input text field 'Payment Profile Name'
#choose Absorb
    choose Absorb
#Input data in field 'Bank'  
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[7]/div[1]/div[1]/div/div/div[2]
    choose choice on dropdown field 'Bank'
#Input data in field 'MID'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[7]/div[1]/div[2]/div/div/div[2]
    choose choice on dropdown field 'MID'
#Input data in field 'MRD'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[7]/div[2]/div[1]/div/input
    Input text field 'MRD'  0.3

TC06-15 เพิ่ม MID from page Payment Profile page
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[8]/div/button
    check Add field MID
    
TC06-16 เพิ่ม Payment Profile from page Payment Profile page
   xpath to click   //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[1]/button
   check Add field Payment Profile

TC06-17 Verify with click on 'Next'
    click 'Next' button page Payment Profile
  
TC06-18 ตรวจสอบข้อมูล หน้า summary page
  check data in Summary page

TC06-19 click button confirm
    click button 'Confirm' 
    Close Browser              

# --------------------------------------------------------- Negative Case --------------------------------------------------------------------
TC_06-20 ใส่ตัวเลขใน field Bank Account No. มากกว่า 12 ตัว
    Login web digipay  daeng_test  1qazZAQ!         #Username  Password
    xpath to click  //*[@id="sidebar"]/nav/li[3]
    click menu
    click button 'New Merchant'
  #Input data in field 'Merchant Name (EN)'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[4]/div[1]/div[1]/div/input
    Input text field Merchant Name (EN)   #random
  #Input data in field 'Merchant Name (TH)'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[4]/div[2]/div[1]/div/input
    Input text field Merchant Name (TH)     #random
  #Input data in field 'Bussiness Type'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[4]/div[2]/div[2]/div/div/div[2]
    choose choice on dropdown field 'Bussiness Type'
  #Input data in field 'Tax No'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[4]/div[2]/div[3]/div/input
    Input text field 'Tax No'     #random
  #Input data in field 'Phone No'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[4]/div[1]/div/div/input
    Input text field 'Phone No' 
  #Input data in field 'Email'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[4]/div[2]/div/div/input
    Input text field 'Email'     #random
  #Input data in field 'Address (EN)'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[6]/div[1]/div[1]/div/input
    Input text field 'Address (EN)'  
  #Input data in field 'Address (TH)'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[6]/div[1]/div[2]/div/input
    Input text field 'Address (TH)'  
  #Input data in field 'Sub District, District, Province, Postal Code'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[2]/div[7]/div/div/div[2]
    choose choice on dropdown field 'Province'
  #click button 'Tax Invoice Detail'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[3]/div[5]/div[1]/div[1]/div/input
    Input text field Tax 'Address (EN)'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[3]/div[5]/div[1]/div[2]/div/input
    Input text field Tax 'Address (TH)'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[3]/div[6]/div/div/div[2]
    choose choice on dropdown field 'Tax Province'  # click button 'Tax Invoice Detail'
  #Input data in field 'Bank Account' 
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[4]/div[4]/div[1]/div/div/div[2]
    choose choice on dropdown field 'Bank Account'
  #Input data in field 'Bank Account No.'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[4]/div[4]/div[2]/div/input
    Input text field 'Bank Account No.' more than 13    #random
  #Input data in field 'Username'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[5]/div[4]/div/input
    Input duplicate Username
  #Input data in field 'First name'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[5]/div[5]/div[1]/div/input
    Input text field 'First name'       #random
  #Input data in field 'Last name'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[5]/div[5]/div[2]/div/input
    Input text field 'Last name'       #random
  #Input data in field 'Email.'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[5]/div[6]/div[1]/div/input
    Input duplicate Email

TC_06-21 กรอกข้อมูลบัญชีผู้ใช้ filed Phone No เป็นตัวอักษร
  #Input data in field 'Phone No.'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[5]/div[6]/div[2]/div/input
    Input text field 'Phone No. 2' by Charactor    #random
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[5]/div[6]/div[2]/div/input
    Input text field 'Phone No. 2' 
    click 'Next' button page New Profile

TC06-22 Verify with left 'MDR' ใส่เป็นค่ามากกว่า 9.99
#click button 'Payment Type'
    click button 'Payment Type'  
#Input data in field 'Payment Profile Name'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[5]/div[1]/div/input
    Input text field 'Payment Profile Name'
#choose Absorb
    choose Absorb
#Input data in field 'Bank'  
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[7]/div[1]/div[1]/div/div/div[2]
    choose choice on dropdown field 'Bank'
#Input data in field 'MID'
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[7]/div[1]/div[2]/div/div/div[2]
    choose choice on dropdown field 'MID'

    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[7]/div[2]/div[1]/div/input
    input MRD > 99.99    100

TC06-23 Verify with left 'MDR' ใส่เป็นค่าติดลบ
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[7]/div[2]/div[1]/div/input
    input MRD < 0    -10
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[1]/div[7]/div[2]/div[1]/div/input
    Input text field 'MRD'  0.3
    click 'Next' button page Payment Profile
    click button 'Confirm'

TC_06-24 Verify field Username ซ้ำกับที่มีในระบบ
    check duplicate Username

TC06-25 click button Back
    click Back button page Summary
    click Back button page Payment Profile
    xpath to click  //*[@id="__next"]/div/div[2]/div[2]/form/div[5]/div[4]/div/input
    Input text field 'Username'
    
TC_06-26 Verify filed Email ซ้ำกับที่มีอยู่ในระบบ
    click 'Next' button page New Profile
    click 'Next' button page Payment Profile
    click button 'Confirm'
    check duplicate Email

TC05-27 กดออกจากหน้า Active merchant โดยที่ยังไม่ได้บันทึกข้อมูล
    xpath to click  //*[@id="sidebar"]/nav/li[3]/span
    click menu
    check alert

TC05-28 ผู้ใช้ไม่ได้ทำรายการในระบบภายในเวลา 9 นาที
    check timeout
    Close Browser