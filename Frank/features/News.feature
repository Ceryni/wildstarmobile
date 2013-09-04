Feature:
	As a user, when I touch an article thumbnail, I should see article body.

Scenario:
	User touches thumbnail
Given I launch the app
Given I touch "Mystery and Mayhem: A Tale from Beyond the Fringe!"
Then I should see "articlebody"

Scenario:
	User goes back to thumbnails
Given I touch "Back"
Then I should see "Mystery and Mayhem: A Tale from Beyond the Fringe!"
