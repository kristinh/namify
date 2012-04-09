Feature: create a list of baby names 

  As a soon to be parent
  So that I can see what potential baby name combination looks best 
  I want to create a list of baby names 

Scenario: create a new list with comma-delimited list 
  Given I am on the new list page 
  When  I add the names "Sabrina, Amelie, Zenobia"  
  And I add the title "My List"
  And I press "Save"
  Then  I should be on the details page for "My List" 
  And I should see "Sabrina Amelie"
  And I should see "Amelie Zenobia"
  And I should see "Zenobia Sabrina"

Scenario: create a new list with a name per line
  Given I am on the new list page 
  When  I add the names "Sabrina\nAmelie, Zenobia"  
  And I add the title "My List"
  And I press "Save"
  Then  I should be on the details page for "My List" 
  And I should see "Sabrina Amelie"
  And I should see "Amelie Zenobia"
  And I should see "Zenobia Sabrina"

@wip
Scenario: delete a movie 
  Given I am on the details page for "Star Wars"
  When  I press "Delete"
  And I confirm popup
  Then  I should be on the homepage 
  When I select all ratings
  Then  I should not see "Star Wars"

