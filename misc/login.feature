@javascript
Feature: Login to the coupa system
  In order to allow authorized users to access the site
  Clients should be allowed to login

    Background:
      Given a seeded blank database
      Given the Setup variable "goto_setup_wizard" is set to "0"

    Scenario: basic login
        Given a user "ex_user" with roles "User,Buyer,Admin"
        Given I am on the homepage
        When I fill in "user_login" with "ex_user"
        And I fill in "user_password" with "ex_user"
        And I press "Sign In"
        Then I should be on the home page
        And I should not see "Wrong Email/Password Combination"

    Scenario: incorrect password should not let me in
        Given I am on the homepage
        When I fill in "user_login" with "coupasupport"
        And I fill in "user_password" with "badpassword"
        And I press "Sign In"
        Then I should see "Wrong Email/Password Combination"

    Scenario: inactive account should not be able to login
        Given a user "ex_user" with roles "User,Buyer,Admin" and attributes "disable!"
        Given I am on the homepage
        When I fill in "user_login" with "ex_user"
        And I fill in "user_password" with "ex_user"
        And I press "Sign In"
        Then I should see "Wrong Email/Password Combination"

    Scenario: Non-admin login should not see setup tab
        Given a user "ex_user" with roles "User,Buyer,Admin"

