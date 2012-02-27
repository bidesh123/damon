@javascript
Feature: Items

    Background:
        Given a seeded blank database

    Scenario: Create an item via ui
        Given a user "user1" with roles "User,Buyer,Admin"
        And   I am logged in as "user1"
        When  I jump to "/items"
        And   I follow "New Item"
        When  I fill in "item_name" with "item 1"
        And   I fill in "item_description" with "A required desc for a test item"
        And   I press "Create"
        Then  I should have an item "item 1"

    Scenario: Create an item via bulk upload
#    Scenario: Create an item via api

