Feature: Create, Edit, Delete Article
 Scenario: Create one new article
  Given I am on Article homepage
  When I click on New Article button
  Then new article should be created

 Scenario: Edit an existing article
  Given I am on Article homepage
  When I click on Edit button
  Then existing article should be updated

 Scenario: Delete an existing article
  Given I am on Article homepage
  When I click on Destroy button
  Then existing article should be deleted

