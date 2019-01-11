Feature: Delete Article
 Scenario: Delete an existing article
  Given I am on Article homepage
  When I click on Destroy button
  Then existing article should be deleted