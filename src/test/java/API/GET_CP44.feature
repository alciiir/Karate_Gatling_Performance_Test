#Autor: Alejandro Rivera Corrales
# Fecha: 27 - 12 - 2022
  # Cargo: analista QA trainee en ACL



Feature: Vista de usuarios con METODO GET con delay numero negativo

  Scenario: Verificar usuario unico metodo GET
    Given url "https://reqres.in/api/users?delay=-10"
    When method GET
    Then status 200
    And print response