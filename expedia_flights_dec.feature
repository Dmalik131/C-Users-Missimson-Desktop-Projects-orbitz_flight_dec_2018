Feature: Expedia Flight Dec

  Background:

    Given user on Expedia home page
    And user selects flight button
    And user selects roundtrip label under flight button
  @flight_search
  Scenario: Verify user enter information for search criteria.
    When user enter <Columbus,OH> in flying from edit box and selects <(CMH-John Glenn Columbus Intl.)>
    Then user enter <Sacramento,CA> in flying to edit box and selects <Sacramento, California>
    And user enter future departing date in edit box
    And user enter future returning date in edit box
      And user click on a Travelers button
      And user select no of adults
      And user select no of childrens
    And user select no of infants
    And user choose child 1 age
    And user select child 2 age
    And user select infant 1 age
      And user click on search button

  Scenario: testing the yml functionality
    Then user verify the yml functionality works
@qa
  Scenario: verify user is warned when searching for flights without entering data in required fields.
    When user click on search button
    Then user should see the following message
      | error_messages                                              |
      | Please correct the errors below.                            |
      | Please complete the highlighted origin field below.         |
      | Please complete the highlighted destination field below.    |
      | Please complete the highlighted departing date field below. |
      | Please complete the highlighted returning date field below. |

