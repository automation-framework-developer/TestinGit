*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  headlesschrome
${url}    https://demo.nopcommerce.com


*** Test Cases ***
TestingInputBox
    open browser  ${url}    ${browser}
    maximize browser window
    title should be  nopCommerce demo store
    click link  xpath://a[@class='ico-login']
    ${"email_text"}   set variable  id:Email
    element should be visible   ${"email_text"}
    element should be enabled   ${"email_text"}

    input text  ${"email_text"}   chandransh.sharma@gmail.com
    clear element text  ${"email_text"}
    sleep  3
    close browser






*** Keywords ***
