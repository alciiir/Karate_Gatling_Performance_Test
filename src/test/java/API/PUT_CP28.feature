#Autor: Alejandro Rivera Corrales
# Fecha: 27 - 12 - 2022
  # Cargo: analista QA trainee en ACL

Feature: Verificar si se logra modificar usuario buscado por el ID

  Background:
    * url "https://reqres.in/"

  Scenario: Verificar la modificación de usuario metodo PUT
    Given path "/api/users/2"
    When request {"name": "morpheus","job": "QA"}
    And method PUT
    Then status 200
    And print response
