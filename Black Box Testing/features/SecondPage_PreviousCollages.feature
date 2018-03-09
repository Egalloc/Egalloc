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
Feature: Previously Built Collages
  All collages previously built by the User within the session should be scaled down and shown.
  The previously built collages should be located at the bottom of the page. The collage currently in main collage space should not be shown with
  the rest of the previously built collages. All previously built collages should be shown in a single horizontal row.
  If the row of previously built collages is larger than the browser width, then a scroll bar should appear to see the entire row.
  Clicking on a previously built collage triggers display of full size original in the main collage space with the matching title.
 
 Background:
    Given User has navigated to localhost
    And User is on Second Page
    And User has at least one previously built collage
   
    Scenario: All Collages previously built by the User within the session should be scaled down and shown
        Then All previously built collages are available
   
    Scenario: Previously Built Collages should be located at the bottom of the page
        Then The Previously Built Collages should be at the bottom of the page
   
    Scenario: Collage currently in main space should not be shown in previously built collages
        Then Collage in Main Space should not be the same as any of the previously shown collages
   
    Scenario: All previously built collages should be shown in a single horizontal row
        Given A large amount of collages are generated
        Then Collages should be in a single horizontal row
   
    Scenario: If row of previously built collages is larger than the browser dith, then a scroll bar should appear
        Given A large amount of collages are generated
        Then A scroll bar should appear
       
    Scenario: Clicking on previously built collage triggers display of full size original in main collage space with matching title
        When Previously Built Collage is clicked on
        Then Title should include the topic of the collage that was clicked on.
