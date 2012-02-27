# note that this stuff is stil a work in progress and does not work
@javascript
Feature: Basic test adding to cart

  Background:
    #Given a seeded blank database
    And a configuration for basic company

  @wip
  Scenario: add item from search
    Given I am logged in as "purchasing_user"
    When I jump to "/"
    When I fill in "laptop" for "What do you need?"
    # And I should see a search result
    # and I can add an item to cart
    # what will i see?  catalog tiems, i request items
    # verify cart has item

  @wip
  Scenario: freeform item request
    Given I am logged in as "user002"
    When I jump to "/"
    And I follow "Write a Request"
    Then fill in "Chairs" for "Item Description"
    Then choose "Item"
    And fill in "newegg.com" for "Supplier"

    #And fill in "stap" for "Supplier"
    #And I wait for 2 seconds
    #And I click on the "Staples" autocomplete option
    And fill in "39.95" for "Unit Price"
    And fill in "3" for "Quantity"
    And fill in "12-1-2011" for "Need By"

    And press "Add to Cart"
    And I follow "Cart"
    And I wait for 1 second
    When I open the account picker within ".billing"
    #And I wait for 8 seconds
    #And I press "Choose" within "tr:last td:nth-child(2)"
    Then I press "Submit for Approval"
    Then I should see "submitted for buyer action"
    And I wait for 15 seconds
    #And I follow "Review Cart"

    When I am logged in as "buyer001"
    When I jump to "/"
 
  @wip
  Scenario: catalog item request
    Given the Sphinx indexes are updated
    Given I am logged in as "user002"
    When I jump to "/"
    Then fill in "hamm" for "What do you need?"
    And I follow "go"
    And debugger

