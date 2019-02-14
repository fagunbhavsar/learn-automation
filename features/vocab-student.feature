@vocabulary_games @vocab_student
Feature: Vocabulary Search and Filter
  As a student I can view vocabulary games created by Zinc
  and by the teaches. I can search games by keywords
  and filter them by categories or grades.

  @smoke @search_vocab @functional @data("search-vocab")
  Scenario: Student searches for Vocab Games by keyword
    Given I am "student"
    And I view vocabulary
    When I can search by keyword
    Then I see expected vocabulary sets

  @smoke  @filter_by_category @functional
  Scenario: Student filter for Vocab Games by category
  Given I am "student"
  And I view vocabulary
  Then I filter by categories to see games created by teachers and zinc
    | Literature           |
    | Non-Fiction          |
    | Test Prep            |
    | Grade-specific Vocab |
  Then I see expected vocabulary sets

  @smoke @filter @filter_by_grades @functional
  Scenario: Student filter for Vocab Games by grades
  Given I am "student"
  And I view vocabulary
  Then I filter by grades to see games created by teachers and zinc
    | Grade 8  |
    | Grade 12 |
    Then I see expected vocabulary sets


  @smoke @pagination @functional
  Scenario: Student views next pages of created by zinc and teachers
    Given I am "student"
    And I view vocabulary
    Then I see page "one" of games created by "Zinc"
    And  I see page "one" of games created by "Teachers"
    When I view next page of games created by "Zinc"
    Then I see page "two" of games created by "Zinc"
    When I view next page of games created by "Teachers"
    Then I see page "two" of games created by "Teachers"
    When I view previous page of games created by "Teachers"
    Then  I see page "one" of games created by "Teachers"
    When I view previous page of games created by "Zinc"
    And  I see page "one" of games created by "Zinc"