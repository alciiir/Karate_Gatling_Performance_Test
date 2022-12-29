#Autor: Alejandro Rivera Corrales
# Fecha: 27 - 12 - 2022
  # Cargo: Practicante analista QA en ACL


### TEST NO usando un driver para visualizar el navegador
Feature: Ingresar al sitio web REQRES

  Scenario: ingreso sitio web
    Given url "https://reqres.in/"
    When method GET
    Then status 200
    #And match driver.title == "Reqres - A hosted REST-API ready to respond to your AJAX requests"