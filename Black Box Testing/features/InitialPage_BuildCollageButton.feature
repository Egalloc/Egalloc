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
Feature: Functionality and display of the Build Collage button on initial page.
  The button is labeled with text that says Build Collage. The text color is white and the background color is dark gray.
  The button cannot be pressed unless the user has entered text into the input box.
  Pressing the button triggers the Build Collage process.
  The button is to the right of the input box.
 
  Background:
    Given User has navigated to localhost
    And User is on Initial Page
 
  @tag1
  Scenario: Correct label on Build Collage button
    Then The button is labeled with 'Build Collage'
 
  @tag2
  Scenario: Correct text color on Build Collage button
    Then Text color of Build Collage button is white
   
   Scenario: Correct background color of Build Collage button
    Then Background color of Build Collage button is dark gray
   
   Scenario: Build Collage button cannot be pressed unless text is entered into the input box
    When User enters text "dog" in input box
    Then Build Collage button becomes pressable
   
   Scenario: Pressing Build Collage button triggers correct process
    When User enters text "dog" in input box
    And User presses Build Collage button
    Then Build Collage process is triggered
   
   Scenario: Correct alignment of button
    Then Build Collage button is to the right of input box
