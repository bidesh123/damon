@javascript
Feature: Basic test of items page

  Background:
    Given a seeded blank database

  Scenario: basic login
    Given a user "user1" with roles "User,Admin"
    And I login as "user1"
    When I jump to "/items"
    Then I should see "Items" within "#pageHeader"
    And I should not see "Exception caught"

