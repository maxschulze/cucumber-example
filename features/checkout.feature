@wip
@announce
@puts
Feature: Checkout
  In order to get the code for my project
  As a user
  I want to be able to checkout a git repository

  Scenario: As a user I want to checkout a new repository
    Given A repository named "test_123" does exist on the server
    When I successfully run `git clone https://github.com/cucumber/cucumber.git test_repo`
    Then a directory named "test_repo" should exist
      And a file named "test_repo/cucumber.gemspec" should exist