Feature: Manage Vendor Feature
  In order to order lunch
  AS a User
  I want create/update vendors

  @javascript
  Scenario: Create new vendor
    Given I am on the home page 
    When I follow "New Vendor"
    And I fill in "Name" with "Vendor1"
    And I press "Save"
    Then I should see "Vendor1" within "#vendors"
