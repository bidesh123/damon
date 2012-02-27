@javascript @wip
Feature: Requisitions
    In order to get my job done,
    I need to place a requisition
    And have it approved and ordered.

  # Background:
    # Given a user "alice" with roles "User" and attributes "enable!"
    
  # Scenario: Create and Submit Requisition with role user
    # Given I Jump to "/"
    # When I click on "#write_click"
    # Then I should see "Item Description"
    # When I fill in the following:
      # | description                         | Test Description   |
      # | requisition_line_supplier           | Jack-of-all-Trades |
      # | requisition_line_unit_price         | 254                |
      # | requisition_line_quantity           | 2                  |
      # | requisition_line_local_need_by_date | 8/17/2011          |
      # | requisition_line_source_part_num    | 123456             |
    # And I press "Add to Cart"
    # Then I should see "We've added it to your cart"
    
  # Scenario: Approve the Requisition to create PO with user role
    # Given a user "user001" with roles "User,Edit as Approver" and attributes "enable!"
    # Given I Jump to "/"
    # When I press "Requests"
    # Then I should see "Requisitions" within "#pageHeader" 
    
  Scenario: Create and Submit Requisition with user role
    Given a user login with username "user00" and password "user00"
    Then I go to user home path
    #    And I follow "write"
    Then fill in "Computers" for "Item Description"
    Then choose "Item"
    And fill in "Jack-of-all-Trades" for "Supplier"
    And fill in "39.95" for "Price"
    And fill in "3" for "Qty"
    And fill in "12-11-2011" for "Need By"
    And fill in "22" for "Part Number"
    And press "Add to Cart"

  Scenario: Add a catalog item
    Given a user login with username "coupasupport" and password "CoupaSupport1"
    Given the user "coupasupport" is an admin user
    Then I go to the items page
    And I follow "New Item"
    Then I go to the new item page
    And fill in "Computers" for "item_name"
    And fill in "A good devise mordern computation and manupulation" for "Description"
    
    And press "Create"
    
  
  Scenario: Add a webform item
    Given a user "admin001" with roles "User,Admin"
    And I login as "admin001"
    When I jump to "/administration/home"
    Then I should see "Administration" within "#pageHeader"
    And I follow "Web forms"
    Then I should see "Web Forms" within "#pageHeader"
    And I follow "New Web Form"
    Then I should see "Create Web Form " within "#pageHeader"
    When I fill in the following:
      | Name                | AR template                  |
      | Description         | IT comp template description | 
      | Related Commodities | IT computer                  |   
      | Quantity            | 2                            |
      | Price               | 254                          |
    And I press "Save and Publish"
    Then I should see "Web Form was successfully published." within "#flash_container"
    
  Scenario: Add a punchout item
    Given a user "admin001" with roles "User,Admin"
    And I login as "admin001"
    When I jump to "/administration/home"
    Then I should see "Administration" within "#pageHeader"
    And I follow the "Punchout sites"
    Then I should see "Punchout Site" within "#pageHeader"
    And I follow "New site"
    Then I should see "Create New Punchout Site " within "#pageHeader"
    And I fill in "punchout-template001" for "Name"
    And I fill in "http://punchout.coupa.com" for "Punchout Url"
    And I fill in "Jack-of-all-Trades" for "Supplier"
    And I fill in "Jack-of-all-Trades Contract - Sample" for "Contract"
    And I fill in "coupa" for "Domain"
    And I fill in "test_identity" for "Identity"
    And I fill in "test_secret_coupa" for "Secret"
    And I fill in "example" for "Sender Domain"
    And I fill in "soid01" for "Sender Identity"
    And I fill in "cXML 1.2.014" for "Protocol"
    And I press "Save"
    Then I should see "Punchout Site" within "#pageHeader"
  
  # TODO In progress  
  Scenario: Add a service based line from review cart page
    Given a user "user01" with roles "User"
    And I login as "user01"
    When I jump to "/user/home"
    When I hover over "Cart"
    Then I should see "Review Cart"
    And I follow "Review Cart"
    Then I follow "Add Line"
    Then choose "Service"
    And I fill in "Item0023" for "Item"
    And I fill in "Supplier ABC - Sample" for "Supplier"
    And I fill in "24" for "Price"
    And I fill in "08/20/11" for "Need By"
    And I press Save
  
  # TODO IN Progress  
  Scenario: Add an irequest Item
    Given a user "admin001" with roles "User,Admin"
    And I login as "admin001"
    When I jump to "/user/get_irequest"
    And I follow "iRequest"
    And I fill in "Gaiam Thirsty Yoga Towel (Smokey Purple)" for "Item name"
    And I fill in "25" for "Price"
    And I fill in "2" for "Quantity"
    And I fill in "A product from amazon testing" for "Note"
    And I fill in "25564" for "Part Number"
    And I press "Add to cart"
    


