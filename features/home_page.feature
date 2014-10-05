Feature: Checking out the RPS game
		I register and I want to play

Scenario: Visiting the homepage
		Given I am on the homepage
		Then I should see "Rock, Paper, Scisssors"

Scenario: Game registration
		Given I am on the homepage
		When I sign in
		Then I should see a welcome message