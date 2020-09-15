Feature: create sequence step

Scenario: Add an auto email step
    Given User Launch chrome browser
    When open the url "http://accounts.outplayhq.com/login"
   And Enter username "sureshlive8@martinz.co"
   And Enter password "Suresh123$"
   And click on login button
 And user clicks on sequence icon in left navigation bar
  And click on Create Sequence button
  And click on Next button
  And Enter subject
  And Enter body
  And click on add button.
  And Verify auto email step is added successfully
  
  
  Scenario: Add prospects to sequence
    Given User Launch chrome browser
    When open the url "http://accounts.outplayhq.com/login"
   And Enter username "sureshlive8@martinz.co"
   And Enter password "Suresh123$"
   And click on login button
   And click on sequence.
  And click on prospects tab.
  And click on add prospects LOV.
  And click on import prospect.
  And click on choose a file.
  And select file from the desktop.
  And click on continue.
  And click on continue in map fileds.
  And add tags
  And select timezone.
  And click on continue and import to sequence.
  And Verify prospect were imported or not.
  
  
  Scenario: Add auto email step at a particular time and verify email scheduled at that time
   Given User Launch chrome browser
    When open the url "http://accounts.outplayhq.com/login"
   And Enter username "sureshlive8@martinz.co"
   And Enter password "Suresh123$"
   And click on login button
 And user clicks on sequence icon in left navigation bar
  And click on Create Sequence button
  And enter Run this step on day
  And select Send at a specific time
  And verify the message is displayed as per the Run this step on day and specific time selected
  And select a template
  And click on add
  And navigate to prospects tab
  And add a prospect
  And Verify the email is scheduled in outbox as per the settings
  
  Scenario: Verify cloning an auto email template
  Given User Launch chrome browser
    When open the url "http://accounts.outplayhq.com/login"
   And Enter username "sureshlive8@martinz.co"
   And Enter password "Suresh123$"
   And click on login button
 And user clicks on sequence icon in left navigation bar
  And click on Create Sequence button
  And enter Run this step on day
  And select Send at a specific time
  And verify the message is displayed as per the Run this step on day and specific time selected
  And select a template
  And click on add
  And click on the more icon of the template
  And click on clone
  And verify another template is added with same subject and body and template should be turned off by default
 
 Scenario: Verify error message while deleting template
   Given User Launch chrome browser
    When open the url "http://accounts.outplayhq.com/login"
   And Enter username "sureshlive8@martinz.co"
   And Enter password "Suresh123$"
   And click on login button
 And user clicks on sequence icon in left navigation bar
  And click on Create Sequence button
  And enter Run this step on day
  And select Send at a specific time
  And verify the message is displayed as per the Run this step on day and specific time selected
  And select a template
  And click on add
  And click on the more icon of the template
  And click on clone
  And click on more option
  And click on delete option
  And verify Delete Variant popup with message "Are you sure you want to delete this variant."
  And click on No 
  And verify popup is closed and variant not deleted
  And click on Yes
  And should delete variant and should display message "Variant deleted successfully."
  And click on delete of one template in the step
  And click on yes in the Delete Variant popup
  And should display error message "Sequence step must have at least one variant."
  
  
  Scenario: create manual email
    Given created an existing sequence
    And click on sequence name
    And click on add step
    And select Manual email
    And verify run this step on date is selected by default
    And priority is selected as normal by default
    And verify the message is displayed as "An Email task will be due, if there is no reply on day 3, after Step #1."
    And modify "Run this step on day" and see the message modified accordingly
    And select the priority as critical
    And click on next
    And select the type as reply
    And verify the subject as "RE:previous step subject"
    And select template from templates dropdown
    And verify the template is linked with current step
    And click on add
    And Verify message "Step addedd successfully."
    And verify the priority is displayed as seleted
    And verify the Day display is as selected
    
Scenario: Clone manual email step
   Given Manual email step is added
    And click on clone
    And verify the Clone Template popup
    And click on No
    And verify template shouldn't be cloned
    And click on clone
    And click on Yes
    And verify message "Variant cloned successfully."
    And verify another template is added with same subject and body and template should be turned off by default  
    
Scenario: Delete Manual email step
    Given Manual email step is added
     And click on more option
  And click on delete option
  And verify Delete Variant popup with message "Are you sure you want to delete this variant."
  And click on No 
  And verify popup is closed and variant not deleted
  And click on Yes
  And should delete variant and should display message "Variant deleted successfully."
  And click on delete of one template in the step
  And click on yes in the Delete Variant popup
  And should display error message "Sequence step must have at least one variant."
  
  
 Scenario: Link template to sequence step
  Given created an existing sequence
    And click on sequence name
    And click on add step
    And select Manual email
    And verify run this step on date is selected by default
    And priority is selected as normal by default
    And verify the message is displayed as "An Email task will be due, if there is no reply on day 3, after Step #1."
    And modify "Run this step on day" and see the message modified accordingly
    And select the priority as critical
    And click on next
    And select the type as reply
    And verify the subject as "RE:previous step subject"
    And select template from templates dropdown
    And verify the message "Linked to template "template name" Unlink"
    And make any changes in email editor and click on save
    And verify the changes in template.
    And unlink the template by clicking on unlink in email template
    And Make changes in template
    And verify changes shouldn't reflect in sequence step template' 
    
 
Scenario: cancel the call step before adding
    Given created an existing sequence
    And click on sequence name
    And click on add step
    And select call icon in Add a call step popup
    And enter instructions
    And verify the default "Run this step on day"
    And select priority as High
    And verify the message "A Call task will be due, if there is no reply on day 7, after Step #4."
    And click on cancel
    And Verify shouldn't add the call step
   
Scenario: Add a call step in sequence
    Given created an existing sequence
    And click on sequence name
    And click on add step
    And select call icon in Add a call step popup
    And enter instructions by selecting replacement tokens
    And verify the default "Run this step on day"
    And select priority as High
    And verify the message "A Call task will be due, if there is no reply on day 7, after Step #4."
    And click on Add
    And Verify message "Step addedd successfully."
    And verify the call step added on day 7 and priority as high
    And added a prospect to all step
    And navigate to tasks page
    And select the task
    And click on execute
    And verify the replacement tokens are replaced in the instructions
    
 Scenario: Verify error message when "Run this step on day" was removed
    Given created an existing sequence
    And click on sequence name
    And click on add step
    And select call icon in Add a call step popup
    And enter instructions
    And remove value in "Run this step on day"
    And click on add
    And verify error message "There should be atleast 1 day."
    
Scenario: cancel the call step before adding
    Given created an existing sequence
    And click on sequence name
    And click on add step
    And select linkedin icon in Add a Linkedin step popup
    And enter instructions
    And verify the default "Run this step on day"
    And select priority as low
    And verify the message "A Linkedin task will be due, if there is no reply on day 9, after Step #5."
    And click on cancel
    And Verify shouldn't add the linkedin step
   
Scenario: Add a linkedin View profile step in sequence
     And click on sequence name
    And click on add step
    And select linkedin icon in Add a Linkedin step popup
    And enter instructions
    And verify the default "Run this step on day"
    And select priority as low
    And verify the message "A Linkedin task will be due, if there is no reply on day 9, after Step #5."
    And click on Add
    And Verify message "Step addedd successfully."
    And verify the linkedin step added on day 9 and priority as low
    And added a prospect to linkedin step
    And navigate to tasks page
    And select the task
    And click on execute
    And verify the replacement tokens are replaced in the instructions
    
 Scenario: Verify error message when "Run this step on day" was removed
    Given created an existing sequence
    And click on sequence name
    And click on add step
    And select linkedin icon in Add a linkedin step popup
    And remove value in "Run this step on day"
    And click on add
    And verify error message "There should be atleast 1 day."
    
Scenario: Add a linkedin Connection request step in sequence
 Given created an existing sequence
     And click on sequence name
    And click on add step
    And select linkedin icon in Add a Linkedin step popup
    And select Connection request for touch type
    And enter Notes / Pointers (Optional)
    And verify the default "Run this step on day"
    And select priority as critical
    And verify the message "A Linkedin task will be due, if there is no reply on day 12, after Step #6."
    And click on Add
    And Verify message "Step addedd successfully."
    And verify the linkedin step added on day 12 and priority as critical
    
Scenario: Add a linkedin InMail step in sequence
 Given created an existing sequence
     And click on sequence name
    And click on add step
    And select linkedin icon in Add a Linkedin step popup
    And select InMail for touch type
    And enter Notes / Pointers (Optional)
    And verify the default "Run this step on day"
    And select priority as critical
    And verify the message "A Linkedin task will be due, if there is no reply on day 15, after Step #7."
    And click on Add
    And Verify message "Step addedd successfully."
    And verify the linkedin step added on day 15 and priority as critical
    
Scenario: Add a linkedin Other step in sequence
 Given created an existing sequence
     And click on sequence name
    And click on add step
    And select linkedin icon in Add a linkedin step popup
    And select Other for touch type
    And enter Notes / Pointers (Optional)
    And verify the default "Run this step on day"
    And select priority as critical
    And verify the message "A Linkedin task will be due, if there is no reply on day 17, after Step #8."
    And click on Add
    And Verify message "Step addedd successfully."
    And verify the linkedin step added on day 17 and priority as critical
    
Scenario: cancel the twitter step before adding
    Given created an existing sequence
    And click on sequence name
    And click on add step
    And select twitter icon in Add a twitter step popup
    And enter Notes / Pointers (Optional)
    And verify the default "Run this step on day"
    And select priority as High
    And verify the message "A Twitter task will be due, if there is no reply on day 19, after Step #9."
    And click on cancel
    And Verify shouldn't add the twitter step
   
Scenario: Add a twitter follow step in sequence
    Given created an existing sequence
    And click on sequence name
    And click on add step
     And select twitter icon in Add a twitter step popup
    And enter Notes / Pointers (Optional)
    And verify the default "Run this step on day"
    And select priority as High
    And verify the message "A Twitter task will be due, if there is no reply on day 19, after Step #9."
    And click on Add
    And Verify message "Step addedd successfully."
    And verify the call step added on day 19 and priority as high
    And added a prospect to all step
    And navigate to tasks page
    And select the task
    And click on execute
    And verify the replacement tokens are replaced in the instructions
    
 Scenario: Verify error message when "Run this step on day" was removed
    Given created an existing sequence
    And click on sequence name
    And click on add step
    And select call icon in Add a call step popup
    And enter Notes / Pointers (Optional)
    And remove value in "Run this step on day"
    And click on add
    And verify error message "There should be atleast 1 day."
   
  Scenario: Add a twitter Retweet step in sequence
    Given created an existing sequence
    And click on sequence name
    And click on add step
    And select twitter icon in Add a twitter step popup
    And select retweet for touh type
    And enter Notes / Pointers (Optional)
    And verify the default "Run this step on day"
    And select priority as High
    And verify the message "A Twitter task will be due, if there is no reply on day 21, after Step #10."
    And click on Add
    And Verify message "Step addedd successfully."
    And verify the call step added on day 21 and priority as high
    
  Scenario: Add a twitter Other step in sequence
    Given created an existing sequence
    And click on sequence name
    And click on add step
    And select twitter icon in Add a twitter step popup
    And select Other for touh type
    And enter Notes / Pointers (Optional)
    And verify the default "Run this step on day"
    And select priority as Normal
    And verify the message "A Twitter task will be due, if there is no reply on day 21, after Step #10."
    And click on Add
    And Verify message "Step addedd successfully."
    And verify the call step added on day 21 and priority as Normal
    
 Scenario: cancel the general step before adding
    Given created an existing sequence
    And click on sequence name
    And click on add step
    And select general icon in Add a general step popup
    And enter Instructions (Optional)
    And verify the default "Run this step on day"
    And select priority as low
    And verify the message "A Twitter task will be due, if there is no reply on day 21, after Step #11."
    And click on cancel
    And Verify shouldn't add the twitter step
   
Scenario: Add a general step in sequence
    Given created an existing sequence
    And click on sequence name
    And click on add step
     And select general icon in Add a general step popup
    And enter Instructions (Optional)
    And verify the default "Run this step on day"
    And select priority as High
    And verify the message "A Generic task will be due, if there is no reply on day 21, after Step #11."
    And click on Add
    And Verify message "Step addedd successfully."
    And verify the call step added on day 21 and priority as high
    And added a prospect to all step
    And navigate to tasks page
    And select the task
    And click on execute
    And verify the replacement tokens are replaced in the instructions
    
Scenario: 
