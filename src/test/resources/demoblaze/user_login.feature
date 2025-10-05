Feature: User login

  Background:  API Login Base Setup
    * url urlApi
    * json body = read('requestBody.json')
    * path '/login'

  @LoginSuccess
  Scenario Outline: User logs in successfully
    * print 'Scenario: LoginSuccess'
    Given request body
    When method POST
    Then status 200
    And print 'API Response:', response
    * print 'Type:', karate.typeOf(response)
    * print 'Lenght:', response.length
    And match response.Auth_token != ""
    Examples:
      | userName | password |
      | cvilleg  | 12345    |

  @LoginFail
  Scenario Outline: User login fails with invalid credentials
    * print 'Scenario: LoginFail'
    Given request body
    When method POST
    Then status 200
    And print 'API Response:', response
    * print 'Type:', karate.typeOf(response)
    * print 'Lenght:', response.length
    And match response.errorMessage == "Wrong password."
    Examples:
      | userName | password |
      | 1111     | 1111     |

