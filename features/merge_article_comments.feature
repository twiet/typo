Feature: comments of merged articles

  As a blog administrator
  So that I can merge articles with same topics
  I want to merge articles

Background: articles have been added to database

  Given the following articles exist:
  | title   | author  | body  | article_id  |
  | article1| author1 | body1 | 1           |
  | article2| author2 | body2 | 2           |

  Given the following comments exist:
  | title     | article_id  | body  |
  | commentA  | 1           | bodyA |
  | commentB  | 2           | bodyB |

  And I am on the "article1" edit page
  And I am "admin"

Scenario: merged article contains comments of articles
  When I fill in "Article ID" with "2"
  And I follow "Merge With This Article"
  And I am on the "article1 merge article2" view page
  Then I should see "bodyA"
  And I should see "bodyB"