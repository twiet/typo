Feature: Merged Article Text

	As a blog administrator
	So that I can merge articles with same topics
  I want to merge articles

Background: articles have been added to database

  Given the following articles exist:
  | title   | author  | body  | article_id  |
  | article1| author1 | body1 | 1           |
  | article2| author2 | body2 | 2           |

	And I am on the "article1" edit page
	And I am "admin"

Scenario: Merging article redirects to merged article page
	When I fill in "Article ID" with "2"
	And I follow "Merge With This Article"
	Then I should be on the "article1 merge article2" view page

Scenario: The merged article should contain the body of the articles
	When I am on the "article1 merge article2" view page
	Then I should see "body1"
	And I should see "body2"

Scenario: The merged article should have either one of the authors of the original articles
	When I am on the "article1 merge article2" view page
	Then I should see "author1" or "author2" but not both

Scenario: The merged article should have either one of the original articles title
	When I am on the "article1 merge article2" view page
	Then I should see "article1" or "article2" but not both
