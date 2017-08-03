Feature: Calabash problem
		 
Scenario: Calabash problem
		  
		  
    Given I am on "www.pseudo.instance" instance
    
	And I set "30" for "Picker 1" in "Drop down"
And I click on the "Clear" button for "Picker 1"
And I set "31" for "Picker 1" in "Drop down"
And I click on the "Set" button for "Picker 1"
And I set "0.1" for "Picker 2" in "Drop down"
And I click on the "Set" button for "Picker 2"
And I click on "Submit" button
And I validate page has text "30.1"
