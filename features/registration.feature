Feature: Registration
  In order to be known that I am in da lab
  As a dude or dudette
  I want to register my MAC address

  Scenario: Registering an account
    Given I have a Twitter account
    When I register with my Twitter
    Then I should have an account in Halleck
