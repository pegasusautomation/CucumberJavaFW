Feature: As a Amazon user I should be able to login and logout with valid credentials

  Scenario: Login into the application with valid credentials
  	Given I am on the Login page URL "https://www.amazon.in/"
    Then I click on sign in button and wait for sign in page
    Then I should see Sign In Page
    When I enter username as "9738036466"
    And I Click on Continue button
    And I enter password as "Annaiahlnt@789"
    And click on login button
    Then I am logged in
   
  Scenario Outline: Searching different products after login
    Given I am on the Login page URL "https://www.amazon.in/"
    Then I click on sign in button and wait for sign in page
    Then I should see Sign In Page
    When I enter username as "9738036466"
    And I Click on Continue button
    And I enter password as "Annaiahlnt@789"
    And click on login button
    Then I am logged in
	And I search different "<products>" from the search bar
		
 	Examples:
	 | products |
	 | laptops  |
	 | pendrive |
	 | led tv   |
  
   
