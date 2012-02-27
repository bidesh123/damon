@javascript
Feature: Basic test of order_header page

  Background:
    Given a seeded blank database

  Scenario: basic login
    Given a user "user1" with roles "User,Admin"
    And I login as "user1"
    When I jump to "/order_headers"
    Then I should see /Purchase.+Orders/ within "#pageHeader"
    And I should not see "Exception caught"

