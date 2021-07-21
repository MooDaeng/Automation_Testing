*** Settings ***
Library                   Selenium2Library
Library                   String
Library                   Collections
Library                   DateTime
Library                   BuiltIn
Resource                  ../Keyword/keyword_GlobalKeyword.robot
Resource                  ../Keyword/keyword_All_search.robot
Resource                  ../Keyword/keyword_new_merchant.robot
Resource                  ../Keyword/keyword_checkfield_merchant.robot
Resource                  ../Keyword/keyword_checkfield_transaction.robot
Resource                  ../Keyword/keyword_voided.robot


*** Variable ***
${url}   
${browser}  Chrome
${Search}   //*[@id="__next"]/div/div[2]/div[2]/div[2]/div/button[2]
