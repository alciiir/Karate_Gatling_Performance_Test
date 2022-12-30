#Autor: Alejandro Rivera Corrales
# Fecha: 27 - 12 - 2022
  # Cargo: analista QA trainee en ACL
  
Feature: Vista de usuarios con METODO GET con delay numero negativo

  Scenario Outline: Verificar usuario unico metodo GET
    Given url "https://reqres.in/api/users?delay=<NUM>"
    When method GET
    Then status 200
    And print response
    And assert NUM > 0
    Examples: 
    | NUM |
    |  2  |
    | -2  |