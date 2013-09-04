Feature:
	As a user, when I touch different tabs, my main screen should change.

Scenario:
	User launches the app
Given I launch the app
Then I should see "Mystery and Mayhem: A Tale from Beyond the Fringe!"

Scenario:
	User touches Example Stuff tab
Given I touch "Example Stuff"
Then I should see "Change It"
