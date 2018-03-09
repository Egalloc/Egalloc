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
Feature: Second Page Main Page
  Background color of the Second Page should be White. The title of the page should be in black text, as well as in a font size that's at least 24 pt.
  The title of the page should be "Collage for topic ", followed by the the topic used to generate the collage that's currently being shown.
  This collage should be shown underneath the title of the page. The Collage should be centered in the page

Background:
	Given User has navigated to localhost
	And User is on second page
  @tag1
  Scenario: Correct background color of Second Page
    Then Background Color of the Second Page is White
  
  Scenario: Correct color of title text
  	Then Title text is Black
  
  Scenario: Correct font size of title text
  	Then Font size of title is 24 pt or greater
  	
  Scenario: Correct title of the page
  	Then Title of page is "Collage for topic " "dogs"
  
  Scenario: Collage is underneath the title of the page
  	Then: Collage is underneath the title of the page

 	Scenario: Collage is centered in the page
 		Then: Collage is centered in the page
