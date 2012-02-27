@javascript @wip
Feature: Requisitions
    In order to get my job done,
    I need to place a Supplier
    And have it approved .

  Scenario: Create Invoice with 3-way supplier
    Given a user "coupa_supplier" with roles "User,Edit as Approver" and attributes "enable!"
    Given I Jump to "/invoices"
    Then I should see "Invoices" within "#pageHeader"
    And I follow "New invoice"
         