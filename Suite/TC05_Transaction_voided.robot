*** Settings ***
Resource                  main.robot

*** Test Case ***
TC_05-16 click menu Transactions and choose Transaction status = Approved
    Login web digipay           #Username  Password
    xpath to click  //*[@id="sidebar"]/nav/li[2]
    click menu
    click menu Transactions and choose Transaction status = Approved
    Search single date
    Click Element   //*[@id="__next"]/div/div[2]/div[2]/div[3]/table/tbody/tr[1]
    check field Transaction Detail

TC_05-17 click button "Void"
    click button 'Voided'
    check Voided Detail
  
TC_05-18 field Reason บอกเหตุผล ในการ voiced > ยืนยันข้อมูลในการ voiced with VOID ME
    Input Reason & VOID ME   ขอยกเลิกรายการ   VOID ME
    click button 'Voided' on pop-up

TC_05-19 field Reason ไม่บอกเหตุผล ในการ voiced and > ยืนยันข้อมูลในการ voiced ด้วยการกรอกข้อมูลที่ไม่ใช่ VOID ME
    click button 'Voided'
    Input Reason   ขอยกเลิกรายการ

TC_05-20 verify field Reason บอกเหตุผล ในการ voiced > ไม่ยืนยันข้อมูลในการ void
    Input non-VOID ME   VOID YOU

TC_05-21 click button "cancel"
    click button 'Cancel'
    Close Browser