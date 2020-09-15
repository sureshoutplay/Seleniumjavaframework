Feature: Signup

Scenario: Login with valid credentials
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/signup"
Then click on signup
Then verify error message "Name is required"
Then verify error message "Email is required"
Then verify error message "Password is required"
And close browser 


Scenario: Verify only work email is accpeted while signup
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/signup"
And enter name
|suresh|
And enter work email 
|sureshana701@gmail.com|
And enter password
|suresh123$|
Then click on signup
And verify error message "Please sign up using your company email address."
And close browser
 
Scenario: Verify successful signup
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/signup"
And enter name
|suresh|
And enter work email 
|sureshstag2001@martinz.co|
And enter password
|suresh123$|
And enter phone number
|+919959626122|
Then click on signup
Then verify mailbox popup
Then close the popup
Then click on settings
And click on schedules
And verify the timezone is "(UTC+05:30) Asia/Calcutta"
And then click on My Account
And verify the timezone is "(UTC+05:30) Asia/Calcutta"
Then click on settings
Then click on signout
  

Scenario: verify error message with existing user
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/signup"
And enter name
|suresh|
And enter work email 
|sureshstag2001@martinz.co|
And enter password
|suresh123$|
And enter phone number
|+919959626122|
Then click on signup
Then verify error message "User already exists."
And close browser

Scenario: verify error message with pending user
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/signup"
And enter name
|suresh|
And enter work email 
|chinni@martinz.co|
And enter password
|suresh123$|
And enter phone number
|+919959626122|
Then click on signup
Then verify error message "User already exists."
And close browser

Scenario: click on login it should navigate to login screen
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/signup"
Then click on login
Then verify the page title "Login"
And close browser

Scenario: verify password validation message
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/signup"
And enter name
|suresh|
And enter work email "<workemail>"
And enter password "<password>"
Then click on signup
Then verify error message "Password length should be minimum of 8 characters and maximum of 15 characters. Should have at least one number, one lowercase, and one uppercase letter."
And close browser

Examples: 
      |username|password|
      |sureshstag900@martinz.co|Suresh123|
      |sureshstag900@martinz.co|Suresh$|
      |sureshstag900@martinz.co|Suresh|
      |sureshstag900@martinz.co|suresh123$|




     
    
    


 