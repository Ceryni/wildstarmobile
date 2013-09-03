Feature:
	As a user, when I touch different tabs, my main screen should change.

Scenario:
	User launches the app
Given I launch the app
Then I should see "First View"

Scenario:
	User touches Info tab
Given I touch "Info"
Then I should see "Second View"
