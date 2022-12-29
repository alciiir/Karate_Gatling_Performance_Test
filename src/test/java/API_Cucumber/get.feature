Feature: Testing API en sitio web REQRES

  Background:
    * url "https://reqres.in/"

  Scenario: Verificar usuario unico metodo GET
    Given path "/api/users/2"
    When method GET
    Then status 200
    And match response.data.id == '#number'
    And print response