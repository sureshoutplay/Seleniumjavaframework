$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("./Feature/Login.feature");
formatter.feature({
  "line": 1,
  "name": "Login",
  "description": "",
  "id": "login",
  "keyword": "Feature"
});
formatter.background({
  "line": 3,
  "name": "",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 4,
  "name": "Initilize",
  "keyword": "Given "
});
formatter.match({
  "location": "Steps.initilize()"
});
formatter.result({
  "status": "skipped"
});
formatter.scenario({
  "comments": [
    {
      "line": 6,
      "value": "##Scenario Outline: Login with valid credentials"
    },
    {
      "line": 7,
      "value": "##    Given User Launch chrome browser"
    },
    {
      "line": 8,
      "value": "##    When open the url \"http://accounts.outplayhq.com/login\""
    },
    {
      "line": 9,
      "value": "##    And Enter username username"
    },
    {
      "line": 10,
      "value": "##    |sureshlive8@martinz.co"
    },
    {
      "line": 11,
      "value": "##    And Enter password \"\u003cpassword\u003e\""
    },
    {
      "line": 12,
      "value": "##    And click on login button"
    },
    {
      "line": 13,
      "value": "##    Then verify page title is \"Outplay | Dashboard\""
    },
    {
      "line": 14,
      "value": "##    And click on settings"
    },
    {
      "line": 15,
      "value": "##    And click on logout button"
    },
    {
      "line": 16,
      "value": "##    Then verify page title is \"Outplay | Login\""
    },
    {
      "line": 17,
      "value": "##    And close browser"
    },
    {
      "line": 18,
      "value": "##"
    },
    {
      "line": 19,
      "value": "## Examples:"
    },
    {
      "line": 20,
      "value": "##       |username|password|"
    },
    {
      "line": 21,
      "value": "##       |sureshlive8@martinz.co|Suresh123$|"
    },
    {
      "line": 22,
      "value": "##       |sureshlive7@martinz.co|Suresh123$|"
    },
    {
      "line": 23,
      "value": "##       |sureshlive8@martinz.co|Suresh123$|"
    },
    {
      "line": 24,
      "value": "##"
    },
    {
      "line": 25,
      "value": "#"
    },
    {
      "line": 26,
      "value": "#"
    },
    {
      "line": 27,
      "value": "#Scenario: Login with valid credentials"
    },
    {
      "line": 28,
      "value": "##Given User Launch chrome browser"
    },
    {
      "line": 29,
      "value": "#When open the url \"http://accounts-stag.outplayhq.com/login?noc\u003dtrue?noc\u003dtrue\""
    },
    {
      "line": 30,
      "value": "#And Enter username"
    },
    {
      "line": 31,
      "value": "#|sureshstag900@martinz.co|"
    },
    {
      "line": 32,
      "value": "#And Enter password"
    },
    {
      "line": 33,
      "value": "#|Suresh123$|"
    },
    {
      "line": 34,
      "value": "#And click on login button"
    },
    {
      "line": 35,
      "value": "##Then verify page title is \"Outplay | Dashboard\""
    },
    {
      "line": 36,
      "value": "# And click on settings"
    },
    {
      "line": 37,
      "value": "#And click on logout button"
    },
    {
      "line": 38,
      "value": "# Then verify page title is \"Outplay | Login\""
    },
    {
      "line": 39,
      "value": "# #And close browser"
    },
    {
      "line": 40,
      "value": "#"
    },
    {
      "line": 41,
      "value": "#@suresh"
    },
    {
      "line": 42,
      "value": "# Scenario: Enter invalid logins"
    },
    {
      "line": 43,
      "value": "# #Given User Launch chrome browser"
    },
    {
      "line": 44,
      "value": "# When open the url \"http://accounts-stag.outplayhq.com/login?noc\u003dtrue\""
    },
    {
      "line": 45,
      "value": "# And Enter username"
    },
    {
      "line": 46,
      "value": "# |sureshlive888@martinz.co|"
    },
    {
      "line": 47,
      "value": "# And Enter password"
    },
    {
      "line": 48,
      "value": "# |Suresh123$|"
    },
    {
      "line": 49,
      "value": "# And click on login button"
    },
    {
      "line": 50,
      "value": "# Then verify error message \"Invaid Email or Password\""
    },
    {
      "line": 51,
      "value": "# And Enter username"
    },
    {
      "line": 52,
      "value": "#  |sureshlive8@martinz.co|"
    },
    {
      "line": 53,
      "value": "# And Enter password"
    },
    {
      "line": 54,
      "value": "# |Suresh1234$|"
    },
    {
      "line": 55,
      "value": "# And click on login button"
    },
    {
      "line": 56,
      "value": "# Then verify error message \"Invaid Email or Password\""
    },
    {
      "line": 57,
      "value": "# #And close browser"
    }
  ],
  "line": 60,
  "name": "Verify error messages without entering logins",
  "description": "",
  "id": "login;verify-error-messages-without-entering-logins",
  "type": "scenario",
  "keyword": "Scenario",
  "tags": [
    {
      "line": 59,
      "name": "@suresh"
    }
  ]
});
formatter.step({
  "comments": [
    {
      "line": 61,
      "value": "# Given User Launch chrome browser"
    }
  ],
  "line": 62,
  "name": "open the url \"http://accounts-stag.outplayhq.com/login?noc\u003dtrue\"",
  "keyword": "When "
});
formatter.step({
  "line": 63,
  "name": "click on login button",
  "keyword": "And "
});
formatter.step({
  "line": 64,
  "name": "verify error message \"Email is required\"",
  "keyword": "And "
});
formatter.step({
  "line": 65,
  "name": "verify error message \"Password is required\"",
  "keyword": "And "
});
formatter.match({
  "arguments": [
    {
      "val": "http://accounts-stag.outplayhq.com/login?noc\u003dtrue",
      "offset": 14
    }
  ],
  "location": "Steps.open_the_url(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "Steps.click_on_login_button()"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "arguments": [
    {
      "val": "Email is required",
      "offset": 22
    }
  ],
  "location": "Steps.verify_error_message(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "arguments": [
    {
      "val": "Password is required",
      "offset": 22
    }
  ],
  "location": "Steps.verify_error_message(String)"
});
formatter.result({
  "status": "skipped"
});
});