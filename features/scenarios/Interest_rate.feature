Feature: Finding interest rate


  Scenario: Getting interest rate using their location
    Given Open the pnc mortage page url
    When  user should enter the loan amt and zipcode
    Then  get the interest_rate for that zipcode
    And display the rates


