#Autor: Alejandro Rivera Corrales
# Fecha: 27 - 12 - 2022
  # Cargo: analista QA trainee en ACL

Feature: Verificar si se logre modificar el usuario solo identificando el ID y el campo que se desea actualizar, en este caso el campo job

  Background:
    * url "https://reqres.in/"

  Scenario: Modificar usuarios con metodo PATCH
    Given path "/api/users/2"
    When request {"name": "Alejandro"}
    And method PATCH
    Then status 200
    And match response == { name: "Alejandro", job: "zion resident"}