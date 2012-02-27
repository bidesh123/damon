Feature: Purchase orders impact budgets
  In order to track spending against budgets
  Purchase orders with accounts that have budgets should impact that budget when issued

    Background:
      Given a seeded blank database
      #Given the database seeds "blank"
      Given an active session
      Given a budget named "foo" with a total of "10000"

    Scenario: Purchase order with an amount based line is issued
      Given I create a purchase order
        And the po has an amount based line
          And an amount of "4000"
          And an account of "foo"
      When the po is issued
      Then the budget remaining for budget-line "foo" should be "6000"

    Scenario: Purchase order with one partial amount invoice
      Given I created a purchase order
        And the po has an amount based line
          And an amount of "4000"
          And an account of "foo"
        And the po is issued
      When I create a partial invoice against the order line for "1000"
      Then the budget remaining for budget-line "foo" should be "6000"
      
    Scenario: Order with two partial invoices for amount based lines
      Given I created a purchase order
        And the po has an amount based line
          And an amount of "4000"
          And an account of "foo"
        And the po is issued
      When I create a partial invoice against the order line for "1000"
      And I create a partial invoice against the order line for "1000"
      Then the budget remaining for budget-line "foo" should be "6000"
      
    Scenario: Order with a quantity based line is issued
      Given I create a purchase order
        And the po has a quantity based line
          And a price of "400"
          And quantity of "11"
          And an account of "foo"
        And the po is issued
      Then the budget remaining for budget-line "foo" should be "5600"

    Scenario: Purchase order with one quantity invoice
      Given I created a purchase order
        And the po has a quantity based line
          And a price of "400"
          And quantity of "11"
          And an account of "foo"
        And the po is issued
      When I create a partial invoice against the order line for "5"
      Then the budget remaining for budget-line "foo" should be "5600"

    Scenario: Purchase order with two quantity invoices
      Given I created a purchase order
        And the po has a quantity based line
          And a price of "400"
          And quantity of "6"
          And an account of "foo"
        And the po has a quantity based line
          And a price of "400"
          And quantity of "5"
          And an account of "foo"
        And the po is issued
      When I create a partial invoice against the order line for "2"
      And I create a partial invoice against the order line for "2"
      Then the budget remaining for budget-line "foo" should be "5600"

    Scenario: Order with a negative quantity based line is issued
      Given I create a purchase order
        And the po has a quantity based line
          And a price of "-1000"
          And quantity of "1"
          And an account of "foo"
        And the po is issued
      Then the budget remaining for budget-line "foo" should be "11000"

