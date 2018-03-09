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
Feature: Build Another Collage Button
  The Build Another Collage button should be located underneath the Collage and should be slightly to the right of the center of the page.
  The Build Another Collage button should have a dark grey background. The Build Another Collage button should have the text "Build Another Collage" on it.
  The text on the Build Another Collage Button should be white. Clicking the button should trigger the Collage Building process.
 
Background:
    Given User has navigated to localhost
    And User is on second page
   
  @tag1
  Scenario: Correct Location of Build Another Collage Button
    Then Build Another Collage button will be located underneath the Collage
    And Build Another Collage button will be slightly to the right of the center of the page
 
    Scenario: Correct background color for Build Another Collage Button
        Then Background color of the Build Another Collage button will be dark grey
   
    Scenario: Correct text on Build Another Collage Button
        Then Text on Build Another Collage Button will be "Build Another Collage"
   
    Scenario: Correct text color on Build Another Collage Button
        Then Text on Build Another Collage Button will be white
       
    Scenario:  Clicking the Build Another Collage Button will trigger the Build Collage Process
        When User clicks the Build Another Collage Button
        Then Build Collage Process is triggered
