#Autor: Alejandro Rivera Corrales
# Fecha: 27 - 12 - 2022
  # Cargo: analista QA trainee en ACL


# autor: Alejandro Rivera Corrales
# Fecha: 27 - 12- 2022

Feature: Testing API en sitio web REQRES

  Background:
    * url "https://reqres.in/"

  Scenario Outline: Verificar eliminar usuario unico metodo DELETE
    # Si dejo el campo ID vacio o agrego otro tipo de dato como STRING el escenario queda aceptado
    Given path "/api/users/<id>"
    When method DELETE
    Then status 204
    Examples:
      |id|
      |1|
      |A|
      |1,1|
      |   |



