Feature: Import prospects from csv file

Scenario: Import prospects from .csv file
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on dropdown of add prospects
And click on import prospects
And click on choose a file 
And select .csv file to be imported
And click on open 
And Verify the message "You have uploaded file name"
And verify Remove file button 
And click on continue
And map email address field
And map firstname
And click on continue
And enter tag "prospects"
And select timezone
And select sequence
And click on continue
And verify the imported prospect count
And click on done
And search with tag "prospects"
Then verify the imported count is equal to total number of prospects searched
And close the browser

Scenario: Verify the sample csv file is imported
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on dropdown of add prospects
And click on import prospects
And Click on Example csv in import prospects popup
And verify the sample file is imported
And close the browser

Scenario: Verify the imported count is working fine
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on dropdown of add prospects
And click on import prospects
And click on Choose a file
And select the csv file and click on continue
And Map the emaiil address field
And click on continue
And select a sequence
And click on continue
And verify the count of imported prospects
And verify the count of added to sequence
And click on done
And verify the prospects added to sequence.
And close browser

Scenario: Verify the Skipped count
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on dropdown of add prospects
And click on import prospects
And click on Choose a file
And select the csv file and click on continue
And Map the email address field
And click on continue
And select a sequence
And click on continue
And select a sequence
And click on continue
And verify the skipped count
And verify the error count
And close browser

Scenario: Verify update missing fields option
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on dropdown of add prospects
And click on import prospects
And click on Choose a file
And select the csv file and click on continue
And Map the email address field
And click on continue
And select update missing fields
And click on continue
And verify the empty fields are getting updated
And close browser


Scenario: Verify update missing fields option
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on dropdown of add prospects
And click on import prospects
And click on Choose a file
And select the csv file and click on continue
And Map the email address field
And select Overwrite fields
And click on continue
And click on continue
And verify the updated prospects count
And verify the prospects fields are updated
And close browser


Scenario: Verify update missing fields option
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on dropdown of add prospects
And click on import prospects
And click on Choose a file
And select the csv file and click on continue
And Map the email address field
And select Skip existing contacts
And click on continue
And click on continue
And verify the Skipped prospects count
And close browser.


Scenario: Verify the import prospects history by importing 1000 prospects
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on dropdown of add prospects
And click on import prospects
And click on Choose a file
And select the csv file and click on continue
And Map the email address field
And click on continue
And click on continue
And click on click here in import history popup
And click on imported prospects in import history
And verify imported prospects
And close browser

Scenario: verify error message Too few fields: expected 8 fields but parsed 7 on row 4
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on dropdown of add prospects
And click on import prospects
And click on Choose a file
And select the csv file "import3.csv" and click on continue
And verify the error message "Too few fields: expected 8 fields but parsed 7 on row 4"
And close import prospects popup
And close browser

Scenario: Verify error message Too many fields: expected 10 fields but parsed 14 on row 2
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on dropdown of add prospects
And click on import prospects
And click on Choose a file
And select the csv file "import1.csv" and click on continue
And verify the error message "Too many fields: expected 10 fields but parsed 14 on row 2"
And close import prospects popup
And close browser

Scenario: Verify error message when we import more than 1000 prospects
Given User Launch chrome browser
When open the url "http://accounts-stag.outplayhq.com/login"
And Enter username
|sureshstag900@martinz.co|
And Enter password
|Suresh123$|
And click on login button
And click on prospects list icon
And click on dropdown of add prospects
And click on import prospects
And click on Choose a file
And select the csv file "1000 prospects.csv" and click on continue
And verify the error message "Cannot import more than 1000 prospects."
And close import prospects popup
And close browser




