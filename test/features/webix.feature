Feature: manage webix
  I want to test all webix features

  Background:
      Given I set Webix page load timeout
      And I am on Webix page

  Scenario: successfull webix trip type
        Given I click on trip type return
        And I click on departure
        And I click on talin
        And I click on destination
        And I click on riga
        And I click on departure date
        And I click on date pick
        And I click on flexible dates
        And I click on adults plus
        And I click on children plus
        And I click on book
        And I wait for 5 seconds

