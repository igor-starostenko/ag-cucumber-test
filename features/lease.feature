@lease
Feature: Autogravity - lease a car

  @SEVERITY-blocker
  Scenario: Verify that user can lease a car
    Given I navigate to the Vehicle page
    And I select "Mercedes-Benz" make in Featured
    And I select "C-Class" model
    When I select "Lease" option
    And I select "C300 4MATIC Sedan" car
    And I can see the lease cost
    And I can see the lease term
    And I click on "SELECT LEASE" button
    And I fill in the dealership address with: "Irvine"
    And I select the 1 dealership
    And I click "SELECT THIS DEALER" button
    And I click "START FINANCING" button
    And I fill in my personal information:
      | First Name    | Test         |
      | Last Name     | Automation   |
      | Date of Birth | 12/12/1980   |
      | Mobile Phone  | 123-456-7890 |
    And I click the "Log In" link
    And I fill in my user credentials
    And I click "LOG IN AND CONTINUE" button
    And I fill in my residence information:
      | Residence Status      | Rent         |
      | Address               | 49 Discovery |
      | City                  | Irvine       |
      | State                 | California   |
      | Zip Code              | 92618        |
      | Move in Date          | 12/2013      |
      | Mortgage/Rent Payment | 3000         |
    And I click "NEXT" button on the Residence page
    And I fill in my employment information:
      | Employment Status     | Full Time    |
      | Employer Name         | Company      |
      | Title                 | Engineer     |
      | Start Date            | 01/2013      |
      | Employer Phone Number | 098-765-4321 |
      | Gross Monthly Income  | 5000         |
    And I click "NEXT" button on the Employment page
    Then I should see "Identification" as a header of the page
    And I should see text "We need your SSN to verify your identity." on the page
