#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Functionality and display of input box on second page.
  Input box should have a dark gray outline and be to the left of the Build Another Collage button.
  Background color of the input box should be white.
  Prompt text should disappear when user begins typing a topic. Pressing enter in the box triggers the build collage process.
 
    Background:
    Given User has navigated to localhost
    And User is on second page
 
  @tag1
  Scenario: Correct color of input box outline
    Then Outline of input box is dark gray
   
  Scenario: Correct location of input box
    Then Input box is to the left of the Build Another Collage button
   
  Scenario: Correct background color of input box
    Then Background color of input box is white
 
  Scenario: Prompt text disappears when user begins typing a topic
    When User enters text "cat" in input box
    Then Prompt text disappears
       
  Scenario: Pressing enter will trigger correct process
    When User enters text "lizard" in input box
    And User presses enter key
    Then Build collage process is triggered
