Feature: Merge Articles Permissions

	As a blog administrator
	So that I can merge articles with same topics
  I want to merge articles

Background: articles have been added to database

  Given the following articles exist:
  | title   | author  | body  | id  |
  | article1| author1 | body1 | 1   |
  | article2| author2 | body2 | 2   |

  And the blog is set up

Scenario:	A non-admin cannot merge articles
	When I am not logged into the admin panel
	And I go to the edit page for "article1"
	Then I should not see "Merge Articles"

Scenario: The admin can merge articles
	When I am logged into the admin panel
	When I go to the edit page for "article1"
	Then I should see "Merge Articles"
