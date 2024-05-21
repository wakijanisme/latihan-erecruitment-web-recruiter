@web-recruiter
Feature: login page and setup

@create-master-pre-screening-01
  Scenario Outline: create data master pre screening [page object]
    Given [page object] I am on the homepage web recruiter
    When [page object] I fill my credentials on the homepage
    And [page object] I click sign in on the homepage
    And [page object] Click Job Vacancy Management
    And [page object] Click Master Pre Screening
    And [page object] Click Create A Question button
    And [page object] Select category "<category>"
    And [page object] Select type "<type>"
    And [page object] Insert question "<question>"
    And [page object] Click Save Button
    Then [page object] Show Pre-Screening Question Master Inquiry

    Examples:
      | category         | type | question          |
      | Internship       | Text | test automation 1 |
      | General          | Text | test automation 2 |
      | Experienced Hire | Text | test automation 3 |