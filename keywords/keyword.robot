*** Keywords ***
setup chromedriver
  set environment variable  webdriver.chrome.driver  ${EXECDIR}/chromedriver.exe

open Google Chrome browser
  open browser  https://www.officemate.co.th/en  Chrome

close dialog
  click element  xpath://*[@id="icon-close-button-1454703945249"]

enter keyword into search field
  [Arguments]  ${items}
  input text  xpath://*[@id="app"]/div[2]/div[1]/div/div[1]/div[1]/div[1]/input  ${items}

click on search icon
  click element  xpath://*[@id="btn-searchResultPage"]

search result page to display the item(s)
  [Arguments]  ${items}
  wait until page contains element  xpath://*[@id="app"]/div/div[4]/div/div[1]/div/div[2]
  element text should be  xpath://*[@id="app"]/div/div[4]/div/div[1]/div/div[2]  Search results for "${items}"
  element should contain  xpath://*[@id="app"]/div/div[4]/div/div[3]/div/div/div/div[2]/div[1]/div[1]

not found match item(s) error message
  [Arguments]  ${items}
  wait until page contains element  xpath://*[@id="app"]/div/div[4]/div/div[1]/div/div[2]
  element text should be  xpath://*[@id="app"]/div/div[4]/div/div[1]/div/div[2]  Search results for "${items}"
  element test should be  xpath://*[@id="pnl-listPageNotFound"]/div[1]  ขออภัย! ไม่พบสินค้าที่ตรงกับ "${items}"
  element test should be  xpath://*[@id="pnl-listPageNotFound"]/div[2]/text()[1]  โปรดตรวจสอบตัวสะกดว่าถูกต้องหรือไม่ หรือค้นหาโดยใช้คำที่ใกล้เคียง
  element test should be  xpath://*[@id="pnl-listPageNotFound"]/div[2]/text()[2]   กรุณาลองค้นหาใหม่อีกครั้ง

suggestion display on the list
  element should contain  xpath://*[@id="app"]/div/div[1]/div/div[1]/div[1]/div[1]/div
  element text should be  xpath://*[@id="app"]/div/div[1]/div/div[1]/div[1]/div[1]/div/div[1]  Categories
  element text should be  xpath://*[@id="7577"]  in HEALTH-CARE-ATK-1-28FEB22
  element text should be  xpath://*[@id="7079"]  in COVID-19-ANTIGEN-TEST-KIT
  element text should be  xpath://*[@id="7682"]  in WEEKLY-ZABB-SALE-BULK-BUY-HYGIENE-WELLNESS-14-20FEB22
  element text should be  xpath://*[@id="7946"]  in HOME-ISOLATION-1-31MAR22
  element text should be  xpath://*[@id="app"]/div/div[1]/div/div[1]/div[1]/div[1]/div/div[3]  Products

click on the first item under product
  click element  xpath://*[@id="app"]/div/div[1]/div/div[1]/div[1]/div[1]/div/div[4]/a[1]

go to the product page
  wait until page contains  xpath://*[@id="product-page"]


