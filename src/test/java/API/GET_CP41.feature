#Autor: Alejandro Rivera Corrales
# Fecha: 27 - 12 - 2022
  # Cargo: analista QA trainee en ACL

Feature: Verificar  que el usuario no existe

  Background:
    * url "https://reqres.in/"

  Scenario: Vista de usuario no registrado con METODO GET
    Given path "/api/unknown/23"
    When method GET
    Then status 404
    And print response