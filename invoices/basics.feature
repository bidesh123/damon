@javascript
Feature: Basic test of invoices page

  Background:
    Given a seeded blank database

  Scenario: basic login
    Given a user "user1" with roles "User,Admin"
    And I login as "user1"
    When I jump to "/invoices"
    # title of page - Receive Items
    Then I should see "Invoices" within "#pageHeader"
    And I should not see "Exception caught"

