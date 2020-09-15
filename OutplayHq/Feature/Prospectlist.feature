Feature: prospect list features

 Scenario: Navigate to prospect list
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And verify page facebook Prospects
And close browser 

Scenario: Create prospect in prospect list
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Add prospect button
And verify Add prospect popup is opened
Then enter phone number "suresh"
Then enter Last Name "automate"
Then enter Email "sureshautomate@martinz.co"
Then select country "india" 
Then enter phone "9959626122"
Then select Timezone "(UTC+05:30) Asia/Kolkata"
Then enter facebook "facebook"
Then select account "salesforceaccount"
Then click on show more options
Then enter linkedin "http://linkedin.com/suresh"
Then enter facebook "http://facebook.com"
Then enter twitter "http://twitter.com"
Then enter company "oracle"
Then enter city "Hyderbad"
Then enter state "telangana"
Then enter country "india"
Then enter custom_fields "custom fields"
Then enter custom_number "123456"
Then click on create.
Then verify the message "Prospect saved successfully."
Then close  browser

Scenario: Cancel create prospect in prospect list after entering details
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Add prospect button
And verify Add prospect popup is opened
Then enter phone number "suresh1"
Then enter Last Name "automate1"
Then enter Email "sureshautomate1@martinz.co"
Then select country "india" 
Then enter phone "9959626122"
Then select Timezone "(UTC+05:30) Asia/Kolkata"
Then enter facebook "facebook"
Then select account "salesforceaccount"
Then click on show more options
Then enter linkedin "http://linkedin.com/suresh"
Then enter facebook "http://facebook.com"
Then enter twitter "http://twitter.com"
Then enter company "oracle"
Then enter city "Hyderbad"
Then enter state "telangana"
Then enter country "india"
Then enter custom_fields "custom fields"
Then enter custom_number "123456"
Then click on cancel
Then Verify prospect not created in prospect list
Then close browser

Scenario: Verify error message displayed when no Email or phone or linkedin is provided.
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Add prospect button
And click on create button in add prospect popup
Then verify error message "Provide Email or Phone or Linkedin"
Then close browser

Scenario: create prospect with only email
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Add prospect button
And Enter emailid
And click on create button
Then verify the message "Prospect saved successfully."
Then close  browser


Scenario: create prospect with only phone number
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Add prospect button
Then select country "india" 
Then enter phone "9959626122"
And click on create button
Then verify the message "Prospect saved successfully."
Then close  browser

Scenario: create prospect with only linkedin
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Add prospect button
Then enter linkedin "http://linkedin.com/suresh1"
And click on create button
Then verify the message "Prospect saved successfully."
Then close  browser

Scenario: Try to create prospect with existing linkedin url
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Add prospect button
Then enter linkedin "http://linkedin.com/suresh1"
And click on create button
Then verify the message "Prospect already exists"
Then close  browser

Scenario: Try to create prospect with existing emailid
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Add prospect button
Then enter email "sureshautomate1@martinz.co"
And click on create button
Then verify the message "Prospect already exists"
Then close  browser

Scenario: Import prospects from csv
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on add prospects dropdown
And click on import prospects
Then verify the Import prospects popup displayed
Then click on choose a file
Then select file "C:\Users\AppVirality\Desktop\CSV\Latest1"
Then click on continue
Then Map the Email field with email address
Then click on continue again
Then enter Tag Latest1
Then select Timezone "(UTC+05:30) Asia/Kolkata"
Then select sequence from dropdown
Then click on continue
Then verify number of prospects imported
Then verify number of prospects added to  sequence
Then verify number of prospects updated
Then verify number of prospects skipped
Then verify number of prospects errors
Then click on done.
Then click on filters and views
Then click on tags
Then enter Latest1 and click on enter
Then verify total number of prospects imported is equal to Total value in prospects list.
Then close  browser

Scenario: Export prospects from prospects list
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on add prospects dropdown
And click on export prospects
And verify exported file
Then close  browser

Scenario: add prospects to seequence
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select a prospect 
And click on sequence icon
And select new sequence 
And click on submit
And verfiy message "Prospect added to sequence"
And click on sequence list icon
And click on New sequence
And click on prospects tab
And enter prospect name in search bar
And Verify the prospect added to sequence
Then close  browser

Scenario: Add existing prospect to sequence from prospect list page

Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select a prospect 
And click on sequence icon
And select new sequence 
And click on submit
And verify the popup Action stats
And verify the error message "Already added to Sequence."
And verify the number of prospect failed as 1
And verify total tasks as 1
And verify % completed as 0
And click on done
Then close  browser

Scenario: Add prospect to a particular step in the sequence
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select a prospect 
And click on sequence icon
And select a team sequence
And add prospect to step2 of sequence
And verify assigned to should be current user
And click on submit
And verfiy message "Prospect added to sequence"
And click on sequence list icon
And click on sequence
And click on prospects tab
And enter prospect name in search bar
And Verify the prospect added to sequence
And verify the prospect step number as step2
And verfiy the task is created for the prospect
Then close  browser


Scenario: select all the prospects and add to sequence
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select all the prospects
And click on sequence icon
And select new sequence 
And click on submit
And verfiy message "Prospect added to sequence"
And click on sequence list icon
And click on New sequence
And click on prospects tab
And Verify the prospect added to sequence
Then close  browser

Scenario: Select all the prospects and add to team seqquence
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select all the prospects
And click on sequence icon
And select team sequence 
And verify the by default account owner is selected
And select another user from the dropdown
And click on submit
And verfiy message "Prospect added to sequence"
And click on sequence list icon
And click on team sequence
And click on prospects tab
And Verify the prospect added to sequence with prospect owner as team user
Then close  browser

Scenario: send one of email
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select a prospects
And click on mail icon
And verify popup with facebook "Email 1 Prospect(s)"
And enter subject
And enter body
And click on send.
And click on outbox
And navigate to sent items
And verify email is  sent in outbox
Then close  browser

Scenario: send bulk email
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select two prospects
And click on mail icon
And verify popup with facebook "Email 2 Prospect(s)"
And verify two prospects displayed as selected
And enter subject
And enter body
And click on send.
And click on outbox
And navigate to sent items
And verify emails are  sent in outbox
Then close  browser

Scenario: schedule one of email
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select a prospects
And click on mail icon
And enter subject
And enter body
And click on down arrow beside send
And click schedule
And verify popup "Schedule Send"  is opened
And verify Schedule for is selected as "1 hr from now"
And verify Scheduled to send on: as  current time + one hour
And click on schedule
And verify messgae "Email sent"
And veify email is schedule for next hour in outbox schedule

Scenario: Verify error message when no subject is given for one of email
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select a prospects
And click on mail icon
And click on send
And verify error message "Mail Subject cannot be empty."
And close browser

Scenario:  Verify error message when mail body is not given for one of email
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select a prospects
And click on mail icon
And enter subject
And click on send
And verify error message "Mail body cannot be empty."
And close browser

Scenario: Verfiy error message for sedning sms when number not purchased
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select a prospects
And click on sms icon
And enter body 
And click on send
And should display error message "Number not purchased."
And close browser

Scenario: Verfiy error message for scheduling sms when number not purchased
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select a prospects
And click on sms icon
And enter body 
And enter dropdown side on send button
And click on schedule
And verify popup "Schedule send"
And verify by default "1 hr from now" should be selected
And click on schedule
And should display error message "Number not purchased."

Scenario: sms sent successfully
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select a prospects
And click on sms icon
And enter body 
And click on send
And verify error message "Sms sent successfully."
And close browser

Scenario: sms body is not given then display error message 
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select a prospects
And click on sms icon
And click on send
And verify error message "SMS body cannot be empty"
And close browser

Scenario: add a prospect to an account
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select a prospects
And click on add to account icon
And select an account from the dropdown
And click on add 
And verify message "Prospect added to Account"
And verfiy the account added
And close browser

Scenario: Click on cancel in add to account popup
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select a prospects
And click on add to account icon
And click on cancel
And should verify popup is closed
And close browser

Scenario: add a prospects to an account
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select all prospects
And click on add to account icon
And select an account from the dropdown
And click on add 
And verify message "Prospect added to Account"
And verfiy the prospects were added to account
And close browser

Scenario: Add tags 
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select prospects
And click on Add tags
And verify Add tags popup is opened
And enter tags suresh and ramesh
And click on submit
And verify message "Tag(s) added successfully."
And verify selected prospects have the tags added
And close browser

Scenario: Click on cancel button in Add tag popup
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select prospects
And click on Add tags
And verify Add tags popup is opened
And click on cancel button
And verify Add tag popup is closed
And close browser

Scenario: Remove added tags
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select prospects
And click on remove tags
And verify remove tags popup is opened
And select tags suresh and ramesh
And click on submit
And verify message "Tag(s) removed successfully."
And close browser

Scenario: Click on cancel button in remove tag popup
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select prospects
And click on remove tags
And verify remove tags popup is opened
And click on cancel button
And verify remove tag popup is closed
And close browser

Scenario: Error messsage when tag name is not entered in add tag popup
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select prospects
And click on Add tags
And click on submit with out entering tags
And verify error message "Please provide proper tag name."
And close browser

Scenario: Error messsage when tag name is not entered in remove tag popup
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select prospects
And click on remove tags
And click on submit with out entering tags
And verify error message "Please provide proper tag name."
And close browser

Scenario: Error message when prospects doesn't have selected tags
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select prospects
And click on remove tags
And enter or select tag name
And click on submit
And verify error message "Select a tag that's associated with the prospect."
And close browser

Scenario: Opt-out the prospects
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select prospects
And click on more icon
And click on optout
And Verify the confirm optout with error message
And click on yes
And verify message "Prospect opted out"
And verify the status of selected prospects Optout
And close browser

Scenario: Delete prospects
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select prospects
And click on more icon
And click on delete
And Verify the confirm Delete with error message
And click on yes
And verify message "Prospect deleted"
And close browser

Scenario: Mark the prospects as finished
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select prospects
And click on more icon
And click on Mark as finished
And Verify the Confirm Mark as Finished popup opened
And verify the popup message
And click on yes
And verify the prospects selecetd were marked as finished
And close browser

Scenario: Pause the prospects in a sequence
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select prospects
And click on sequence icon
And add prospects to sequence
And click on more icon
And click on pause
And verify confirm popup is displayed
And verify popup message
And click on Yes
And verify message "Prospect paused from all sequences"
And verify the prospects selected were paused from all sequences
And close browser

Scenario: Set stage for prospects
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select prospects
And click on more icon
And click on set stage
And verify the Set Prospect Stage popup
And select any stage from the dropdown
And click on submit
And verify message "2 Prospects stage updated" 
And close browser

Scenario: Click on cancel in set stage popup
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select prospects
And click on more icon
And click on set stage
And verify the Set Prospect Stage popup
And click on cancel
And verify Set Prospect Stage popup closed
And close browser

Scenario: Verify page navigation
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And select all the prospects
And click delete
And import 1000 prospects
And should see 1 - 50 of 1000 in page one
And verify all the pages
And close browser

Scenario: Verify Owner filter
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And click on Owner
And select Owner from list
And verify the prospects were displayed as per the selected owner
And verify the filter Owned by: prospect name and clear all button
And click on clear all
And verify all the prospects are displayed
And close browser

Scenario: Verify tags filter
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And click on tags
And enter tag Pipedrive
And verify filter Tagged with:Pipedrive
And verify all the prospects with Pipedrive tag are displayed
And click on clear all
And verify all the prospects are displayed.
And close browser

Scenario: Verify sequence filter
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And click on sequence
And verify all the sequences were displayed in the dropdown
And select any sequence
And verify filter with name With sequence: sequence name
And verify all the prospects which were added in sequence were displyed
And click on clear all
And verify all prospects are displayed
And close browser

Scenario: Verify accounts filter
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And click on accounts
And verify all the accounts displayed in the dropdown
And select any account
And verify In account: account name filter
And verify all the prospects in account are displayed
And click on clear all
And verify all prospects are displayed
And close browser

Scenario: Verify Emailid filter
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And click on field
And verify by default emailid is selected
And verify contains is selected
And enter "su"
And click on done
And verify filter Email ID contains: su
And verify all the prospects with email contains "su" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select starts with
And enter "s"
And click on done
And verify filter Email ID starts with: s
And verify all the prospects with email starts with "s" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select ends with
And enter ".com"
And click on done
And verify filter Email ID ends with: .com
And verify all the prospects with email ends with ".com" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select equals
And enter "sureshanaparthy249@gmail.com"
And click on done
And verify filter Email ID equals:"sureshanaparthy249@gmail.com"
And verify all the prospects with emailid equals "sureshanaparthy249@gmail.com" should be displayed
And click on clear all
And verfiy all prospects are displayed
And close browser


Scenario: Verify phone number filter
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And click on field
And select phone number from the dropdown
And verify contains is selected
And enter "su"
And click on done
And verify filter firstname contains: su
And verify all the prospects with firstname contains "su" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select starts with
And enter "s"
And click on done
And verify filter firstname starts with: s
And verify all the prospects with firstname starts with "s" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select ends with
And enter "h"
And click on done
And verify filter firstname ends with: .com
And verify all the prospects with firstname ends with "h" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select equals
And enter "suresh"
And click on done
And verify filter firstname equals:"suresh"
And verify all the prospects with firstname equals "suresh" should be displayed
And click on clear all
And verfiy all prospects are displayed
And close browser

Scenario: Verify last name filter
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And click on field
And select last name from the dropdown
And verify contains is selected
And enter "ana"
And click on done
And verify filter lastname contains: su
And verify all the prospects with lastname contains "ana" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select starts with
And enter "a"
And click on done
And verify filter lastname starts with: a
And verify all the prospects with lastname starts with "a" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select ends with
And enter "a"
And click on done
And verify filter lastname ends with: .com
And verify all the prospects with lastname ends with "a" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select equals
And enter "ana"
And click on done
And verify filter lastname equals:"suresh"
And verify all the prospects with lastname equals "suresh" should be displayed
And click on clear all
And verfiy all prospects are displayed
And close browser

Scenario: Verify phone number filter
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And click on field
And select phone number from the dropdown
And verify contains is selected
And enter "62"
And click on done
And verify filter phone number contains: 99
And verify all the prospects with phone number contains "62" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select starts with
And enter "99"
And click on done
And verify filter phone number starts with: 99
And verify all the prospects with phone number starts with "99" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select ends with
And enter "22"
And click on done
And verify filter phone number ends with: 22
And verify all the prospects with phone number ends with "22" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select equals
And enter "9959626122"
And click on done
And verify filter phone numbername equals:"9959626122"
And verify all the prospects with phone numbername equals "9959626122 should be displayed
And click on clear all
And verfiy all prospects are displayed
And close browser

Scenario: Verify facebook filter
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And click on field
And select facebook from the dropdown
And verify contains is selected
And enter "le"
And click on done
And verify filter facebook contains: le
And verify all the prospects with facebook contains "le"should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select starts with
And enter "l"
And click on done
And verify filter facebook starts with: l
And verify all the prospects with facebook starts with "l" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select ends with
And enter "d"
And click on done
And verify filter facebook ends with: d
And verify all the prospects with facebook ends with "d" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select equals
And enter "lead"
And click on done
And verify filter facebookname equals:"lead"
And verify all the prospects with facebookname equals lead should be displayed
And click on clear all
And verfiy all prospects are displayed
And close browser


Scenario: Verify linkedin filter
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And click on field
And select linkedin from the dropdown
And verify contains is selected
And enter "le"
And click on done
And verify filter linkedin contains: le
And verify all the prospects with linkedin contains "le"should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select starts with
And enter "l"
And click on done
And verify filter linkedin starts with: l
And verify all the prospects with linkedin starts with "l" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select ends with
And enter "d"
And click on done
And verify filter linkedin ends with: d
And verify all the prospects with linkedin ends with "d" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select equals
And enter "lead"
And click on done
And verify filter linkedinname equals:"lead"
And verify all the prospects with linkedin equals lead should be displayed
And click on clear all
And verfiy all prospects are displayed
And close browser

Scenario: Verify facebook filter
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And click on field
And select facebook from the dropdown
And verify contains is selected
And enter "le"
And click on done
And verify filter facebook contains: le
And verify all the prospects with facebook contains "le"should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select starts with
And enter "l"
And click on done
And verify filter facebook starts with: l
And verify all the prospects with facebook starts with "l" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select ends with
And enter "d"
And click on done
And verify filter facebook ends with: d
And verify all the prospects with facebook ends with "d" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select equals
And enter "lead"
And click on done
And verify filter facebookname equals:"lead"
And verify all the prospects with facebook equals lead should be displayed
And click on clear all
And verfiy all prospects are displayed
And close browser

Scenario: Verify twitter filter
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And click on field
And select twitter from the dropdown
And verify contains is selected
And enter "le"
And click on done
And verify filter twitter contains: le
And verify all the prospects with twitter contains "le"should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select starts with
And enter "l"
And click on done
And verify filter twitter starts with: l
And verify all the prospects with twitter starts with "l" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select ends with
And enter "d"
And click on done
And verify filter twitter ends with: d
And verify all the prospects with twitter ends with "d" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select equals
And enter "lead"
And click on done
And verify filter twittername equals:"lead"
And verify all the prospects with twitter equals lead should be displayed
And click on clear all
And verfiy all prospects are displayed
And close browser

Scenario: Verify company filter
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And click on field
And select company from the dropdown
And verify contains is selected
And enter "le"
And click on done
And verify filter company contains: le
And verify all the prospects with company contains "le"should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select starts with
And enter "l"
And click on done
And verify filter company starts with: l
And verify all the prospects with company starts with "l" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select ends with
And enter "d"
And click on done
And verify filter company ends with: d
And verify all the prospects with company ends with "d" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select equals
And enter "lead"
And click on done
And verify filter companyname equals:"lead"
And verify all the prospects with company equals lead should be displayed
And click on clear all
And verfiy all prospects are displayed
And close browser

Scenario: Verify city filter
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And click on field
And select city from the dropdown
And verify contains is selected
And enter "le"
And click on done
And verify filter city contains: le
And verify all the prospects with city contains "le"should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select starts with
And enter "l"
And click on done
And verify filter city starts with: l
And verify all the prospects with city starts with "l" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select ends with
And enter "d"
And click on done
And verify filter city ends with: d
And verify all the prospects with city ends with "d" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select equals
And enter "lead"
And click on done
And verify filter cityname equals:"lead"
And verify all the prospects with city equals lead should be displayed
And click on clear all
And verfiy all prospects are displayed
And close browser

Scenario: Verify state filter
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And click on field
And select state from the dropdown
And verify contains is selected
And enter "le"
And click on done
And verify filter state contains: le
And verify all the prospects with state contains "le"should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select starts with
And enter "l"
And click on done
And verify filter state starts with: l
And verify all the prospects with state starts with "l" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select ends with
And enter "d"
And click on done
And verify filter state ends with: d
And verify all the prospects with state ends with "d" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select equals
And enter "lead"
And click on done
And verify filter statename equals:"lead"
And verify all the prospects with state equals lead should be displayed
And click on clear all
And verfiy all prospects are displayed
And close browser

Scenario: Verify company filter
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And click on field
And select company from the dropdown
And verify contains is selected
And enter "le"
And click on done
And verify filter company contains: le
And verify all the prospects with company contains "le"should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select starts with
And enter "l"
And click on done
And verify filter company starts with: l
And verify all the prospects with company starts with "l" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select ends with
And enter "d"
And click on done
And verify filter company ends with: d
And verify all the prospects with company ends with "d" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select equals
And enter "lead"
And click on done
And verify filter companyname equals:"lead"
And verify all the prospects with company equals lead should be displayed
And click on clear all
And verfiy all prospects are displayed
And close browser


Scenario: Verify custom_fields filter
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And click on field
And select custom_fields from the dropdown
And verify contains is selected
And enter "le"
And click on done
And verify filter custom_fields contains: le
And verify all the prospects with custom_fields contains "le"should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select starts with
And enter "l"
And click on done
And verify filter custom_fields starts with: l
And verify all the prospects with custom_fields starts with "l" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select ends with
And enter "d"
And click on done
And verify filter custom_fields ends with: d
And verify all the prospects with custom_fields ends with "d" should be displayed
And click on clear all
And verfiy all prospects are displayed
Then select equals
And enter "lead"
And click on done
And verify filter custom_fieldsname equals:"lead"
And verify all the prospects with custom_fields equals lead should be displayed
And click on clear all
And verfiy all prospects are displayed
And close browser


Scenario: Verify saved views
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on Filters & Views
And search with email
And search with phone number
And click on Save as view.
And enter view name
And verify view is created.
And select existing view and verify results displayed as per view selected.
And create multiple views
And verify results displayed as per the view selected
And close browser

