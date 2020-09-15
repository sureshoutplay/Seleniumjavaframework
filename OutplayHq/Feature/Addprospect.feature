Feature: Import prospects from CSV

 Scenario: Add prospects to sequence
    Given User Launch chrome browser
    When open the url "http://accounts.outplayhq.com/login"
    And Enter username "sureshlive8@martinz.co"
    And Enter password "Suresh123$"
    And click on login button
    And user clicks on sequence icon in left navigation bar
    And click on sequence.
    And click on prospects tab.
    And click on add prospects LOV.
    And click on import prospect.
    And click on choose a file.
    And click on continue.
    And click on  continue in map fileds.
    And add tags
   And select timezone.
   And click on continue and import to sequence.
   And Verify prospect were imported or not.