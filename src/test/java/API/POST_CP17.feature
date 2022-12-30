# autor: Alejandro Rivera Corrales
# Fecha: 27 - 12- 2022

Feature: Testing API en sitio web REQRES

  Background:
    * url "https://reqres.in/"

  Scenario Outline: Verificar crear usuario unico metodo POST
    # Si dejo el campo ID vacio o agrego otro tipo de dato como STRING el escenario queda aceptado
    Given path "/api/users"
    When request {"<name>": <Vname>, "<job>": <Vjob>}
    And method POST
    Then status 201
    And print response
    Examples:
      | name | Vname       | job | Vjob        |
      | name | "alejandro" | job | Analista QA |
      | name | 12345       | job | 12345       |
      | name | null        | job | Analista QA |
      | name |             | job | Analista QA |