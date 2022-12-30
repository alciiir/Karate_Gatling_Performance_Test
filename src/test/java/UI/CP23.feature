#Autor: Alejandro Rivera Corrales
# Fecha: 27 - 12 - 2022
  # Cargo: analista QA trainee en ACL

Feature: Test para verificar la suscripcion con correo electronico

  Scenario: Suscripción
    * configure driver = { type:"msedge"}
    Given driver "https://reqres.in/"
    When click("//*[@id='trigger-pro']")
    * delay(5000)
    And input("//*[@id='mce-EMAIL']", 'aleriveracorrales@gmail.com')
    * delay(2500)
    * click("//*[@id='mc-embedded-subscribe']")


