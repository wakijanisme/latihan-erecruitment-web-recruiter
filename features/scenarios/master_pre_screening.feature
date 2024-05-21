@web-recruiter
Feature: login page and setup

  Background: user access login
    Given I am on the homepage web recruiter
    When I click sign in on the homepage
    And I fill my credentials on the homepage

  @test-login
  Scenario: success login with correct credentials
    # Given I am on the homepage web recruiter
    # When I click sign in on the homepage
    # And I fill my credentials on the homepage
    Then I should be logged in

  @master-pre-screening
  Scenario: login sampai pembuatan setup
    # Given I am on the homepage web recruiter
    # When I click sign in on the homepage
    # And I fill my credentials on the homepage
    And Click Job Vacancy Management
    And Click Master Pre Screening
    Then Show Pre-Screening Question Master Inquiry

  @create-master-pre-screening
  Scenario Outline: create data master pre screening
    # Given I am on the homepage web recruiter
    # When I click sign in on the homepage
    # And I fill my credentials on the homepage
    And Click Job Vacancy Management
    And Click Master Pre Screening
    And Click Create A Question button
    And Select category "<category>"
    And Select type "<type>"
    And Insert question "<question>"
    And Click Save Button
    Then Show Pre-Screening Question Master Inquiry

    Examples:
      | category         | type | question          |
      | Internship       | Text | test automation 1 |
      | General          | Text | test automation 2 |
      | Experienced Hire | Text | test automation 3 |