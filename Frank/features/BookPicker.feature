Feature:
	As a user, I can change the book label with an action picker.

Scenario:
	User touches Cancel Button on Book Picker without selecting a book

Given I launch the app
Then I touch "Example Stuff"
Then I should see "Cat's Cradle"
Given I touch "Change It"
Then I should see "Book Picker"
Given I touch "Cancel"
Then I should not see "Book Picker"
Then I should see "Cat's Cradle"

Scenario:
	User selects a book from the picker and touches Done

Given I touch "Change It"
Then I should see "Book Picker"
Given I touch "Ender's Game"
When I touch "Done"
Then I should not see "Book Picker"
Then I should see "Ender's Game"

Scenario:
	User selects a book form the picker and touches Cancel

Given I touch "Change It"
Then I should see "Book Picker"
Given I touch "Hitchhiker's Guide"
When I touch "Cancel"
Then I should not see "Book Picker"
Then I should see "Ender's Game"
Then I should not see "Hitchhiker's Guide"

