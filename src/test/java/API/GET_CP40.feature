#Autor: Alejandro Rivera Corrales
# Fecha: 27 - 12 - 2022
  # Cargo: analista QA trainee en ACL

Feature: Verificar si se puede enlistar el usuario si ya se encuentra registrada su información

  Background:
    * url "https://reqres.in/"

  Scenario: Vista de usuario desconocido con METODO GET
    Given path "/api/unknown/2"
    When method GET
    Then status 200
    And print response