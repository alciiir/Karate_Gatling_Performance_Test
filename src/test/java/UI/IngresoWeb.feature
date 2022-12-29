#Autor: Alejandro Rivera Corrales
# Fecha: 27 - 12 - 2022
  # Cargo: Practicante analista QA en ACL

### TEST usando un driver para visualizar el navegador
Feature: Ingresar al sitio web REQRES

  Scenario: ingreso sitio web
    Given driver "https://reqres.in/"
    When match driver.url == "https://reqres.in/"
    Then match driver.title == "Reqres - A hosted REST-API ready to respond to your AJAX requests"
    * delay(3500)

