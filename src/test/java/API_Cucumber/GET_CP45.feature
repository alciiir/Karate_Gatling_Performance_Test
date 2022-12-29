#Autor: Alejandro Rivera Corrales
  #Fecha 28 - 12 - 2022

Feature: Testing API en sitio web REQRES

  Scenario: Verificar usuario unico metodo GET
    Given url "https://reqres.in/api/users?delay=3"
    When method GET
    Then status 200
    And print response