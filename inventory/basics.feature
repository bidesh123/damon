@javascript
Feature: Basic test of inventory page

  Background:
    Given a seeded blank database

  Scenario: basic login
    Given a user "user1" with roles "User,Admin"
    And I login as "user1"
    When I jump to "/receipts"
    # title of page - Receive Items
    Then I should see /Receive(.+)Items/ within "#pageHeader"
    And I should not see "Exception caught"

