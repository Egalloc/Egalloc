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
Feature: Export Collage Button
  Clicking the Export Collage Button will allow the user to download a PNG image of the collage. 
  The size of the exported image should be the same as the currently displayed collage.
  The Export Collage Button should be dark grey. The Label text of the Export Collage Button should be "Export Collage".
  The text on the Export Collage Button should be white.

	Background:
    Given User has navigated to localhost
    And User is on second page
  @tag1
  Scenario: Clicking on Export Collage Button allows user to download PNG of collage
  	When Export Collage Button is clicked
  	Then User is able to download PNG of Collage
  	
  Scenario: Size of exported image should be same as currently displayed collage
  	When Export Collage Button is clicked
  	And Image is successfully exported
  	Then Size of Downloaded image is the same as Currently displayed collage
  
	Scenario: Correct Background color of Export Collage Button
		Then Export Collage Buttons background color is dark grey
	
	Scenario: Correct Label text for Export Collage Button
		Then Export Collage Button should have the label text "Export Collage" on it
	
	Scenario: Correct text color for Export Collage Button
		Then Color of the text on the Export Collage Button is white
