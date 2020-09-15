Feature: Login

#Background:
# Given Initilize

##Scenario Outline: Login with valid credentials
##    Given User Launch chrome browser
##    When open the url "http://accounts.outplayhq.com/login"
##    And Enter username username
##    |sureshlive8@martinz.co
##    And Enter password "<password>"
##    And click on login button
##    Then verify page title is "Outplay | Dashboard"
##    And click on settings
##    And click on logout button
##    Then verify page title is "Outplay | Login"
##    And close browser
## 
## Examples: 
##       |username|password|
##       |sureshlive8@martinz.co|Suresh123$|
##       |sureshlive7@martinz.co|Suresh123$|
##       |sureshlive8@martinz.co|Suresh123$|
##   
#  
#

Scenario: Login with valid credentials
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login?noc=true?noc=true"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
#Then verify page title is "Outplay | Dashboard"
 And click on settings
And click on logout button
 Then verify page title is "Outplay | Login"
 #And close browser 
 

 Scenario: Enter invalid logins
 Given User Launch chrome browser
 When open the url "https://codeseven.github.io/toastr/demo.html"
 And click on show toast button
# And Enter username
# |sureshlive888@martinz.co|
# And Enter password
# |Suresh123$|
# And click on login button
# Then verify error message "Invaid Email or Password"
# And Enter username
#  |sureshlive8@martinz.co|
# And Enter password
# |Suresh1234$|
# And click on login button
# Then verify error message "Invaid Email or Password"
 #And close browser
    
@suresh
 Scenario: Enter invalid logins
 Given User Launch chrome browser
 When open the url "http://accounts-stag.outplayhq.com/login?noc=true?noc=true"
 And Enter username
 |sureshlive888@martinz.co|
 And Enter password
 |Suresh123$|
 And click on login button
 Then verify error message "Invaid Email or Password"
 And Enter username
  |sureshlive8@martinz.co|
 And Enter password
 |Suresh1234$|
 And click on login button
 Then verify error message "Invaid Email or Password"
 #And close browser
 
 Scenario: Verify error messages without entering logins
 # Given User Launch chrome browser
 When open the url "http://accounts-stag.outplayhq.com/login?noc=true"
 And click on login button
 And verify email error message "Email is required"
 And verify password error message "Password is required" 
 #And close browser
 
 
 Scenario: Verify error message in forgot password when no email is given
 #Given User Launch chrome browser
 When open the url "http://accounts-stag.outplayhq.com/login?noc=true"
 And click on forgot Password
 And click on submit
 Then verify No email error message "Email is required"
# And close browser
# 
# Scenario: Verify error message in forgot password when incorrect email is given
# Given User Launch chrome browser
# When open the url "http://accounts-stag.outplayhq.com/login?noc=true"
# And click on forgot Password
# And Enter email
#  |sureshtest123@martinz.co|
#   And click on submit
# Then verify error message "Email is not registered with us. Please signup."
# And close browser
# 
# Scenario: Reset the password and login
#  Given User Launch chrome browser
# When open the url "http://accounts-stag.outplayhq.com/login?noc=true"
# And click on forgot Password
# And Enter email
#  |sureshstag700@martinz.co|
#   And click on submit
# Then login to zohomail
# Then click on the reset passworrd link  in the email
#Then Set New Password page should open
#Then Enter new password
#|Karthi123$|
#Then Enter confirm neww password
#|Karthi123$|
#Then click on submit
#Then verify message "Password setup successful."
#Then click on "Click here to Login" link
#Then enter username
#|sureshstag700@martinz.co|
#Then enter password
#|Karthi123$|
#And click on login.
# Then verify page title is "Outplay | Login"
# And close browser 
#      
# Scenario: click on signup to get the signup screen
# Given User Launch chrome browser
# When open the url "http://accounts-stag.outplayhq.com/login?noc=true" 
#Then click on signup
#Then verify page title is "Sign Up"
# And close browser 
# 
#Scenario: Verify error message when an pending user tried to login
# Given User Launch chrome browser
# When open the url "http://accounts-stag.outplayhq.com/login?noc=true"
# And Enter username
# |chinni@martinz.co|
# And Enter password
# |Suresh123$|
# And click on login button
# Then verify error message "Invaid Email or Password"
# And close browser 
# 
#
#
 