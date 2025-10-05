Feature: User registration

  Background: API Signup Base Setup
    * url urlApi
    * json body = read('requestBody.json')
    * path '/signup'

  @RegistrationSuccess
  Scenario Outline: User register successfully
    * print 'Scenario: RegistrationSuccess'
    Given request body
    When method POST
    Then status 200
    And print 'API Response:', response
    * print 'Type:', karate.typeOf(response)
    * print 'Lenght:', response.length
    And  match response == '""\n'
    Examples:
      | userName | password |
      | retoApi  | 123      |

  @RegistrationFail
  Scenario Outline: Registration fails due to existing user
    * print 'Scenario: RegistrationFail'
    Given request body
    When method POST
    Then status 200
    And print 'API Response:', response
    * print 'Type:', karate.typeOf(response)
    * print 'Lenght:', response.length
    And match response.errorMessage == "This user already exist."
    Examples:
      | userName | password |
      | retoApi  | 123      |

