*** Settings ***
Resource  ../resources/imports.robot
Suite Setup  setup chromedriver
Test Setup  open Google Chrome browser
Test Teardown  close browser

*** Test Cases ***
TC001-03 - Search the item by click on magnifying glass icon with all small letters in English
  maximize browser window
  sleep  3s
  close dialog
  enter keyword into search field  ${small_letters}
  click on search icon
  search result page to display the item(s)  ${small_letters}

TC001-05 - Search the item by click on magnifying glass icon with all capital letters in English
  maximize browser window
  sleep  3s
  close dialog
  enter keyword into search field  ${cap_letters}
  click on search icon
  search result page to display the item(s)  ${cap_letters}

TC001-06 - Search the item with mix letters (small and capital letters) in English
  maximize browser window
  sleep  3s
  close dialog
  enter keyword into search field  ${small_n_cap}
  click on search icon
  search result page to display the item(s)  ${small_n_cap}

TC001-07 - Search the item with specific keyword
  maximize browser window
  sleep  3s
  close dialog
  enter keyword into search field  ${spec_letters}
  click on search icon
  search result page to display the item(s)  ${spec_letters}

TC001-08 - Search an invalid keyword
  maximize browser window
  sleep  3s
  close dialog
  enter keyword into search field  ${invalid_item}
  click on search icon
  not found match item(s) error message  ${invalid_item}

TC001-14 - Verify the suggest word when enter keyword on the search field
  maximize browser window
  sleep  3s
  close dialog
  enter keyword into search field  ${sug_word}
  suggestion display on the list

TC001-16 - Select an item on the suggestion with item under products
  maximize browser window
  sleep  3s
  close dialog
  enter keyword into search field  ${sug_word}
  suggestion display on the list
  click on the first item under product
  go to the product page