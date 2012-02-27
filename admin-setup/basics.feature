@javascript
Feature: Basic test of setup page

  Background:
    Given a seeded blank database

  Scenario: basic login
    Given a user "admin001" with roles "User,Admin"
    Given I am logged in as "admin001"
    When I jump to "/administration/home"
    Then I should see "Administration" within "#pageHeader"
    And I should not see "Exception caught"

