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
Feature: Display of error message on collage page.
  Error message should read "Insufficient number of images found" and should be displayed in the main collage space.
  Text should be black and 18 pt.

Background:
	Given User has navigated to localhost
	And User is on second page
	
  @tag1
  Scenario: Correct text displayed as error message
    When Build Collage function returns error
    Then Error message says "Insufficient number of images found"
    
  Scenario: Correct color of text
    Then Text color is black
    
  Scenario: Correct font size of text
    Then Font size is 18 pt
