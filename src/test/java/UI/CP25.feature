#Autor: Alejandro Rivera Corrales
# Fecha: 27 - 12 - 2022
  # Cargo: analista QA trainee en ACL

Feature: Verificar la redirección al blog de los creadores del sistema

  Scenario: Info creadores
    * configure driver = { type:"msedge"}
    Given driver "https://reqres.in/"
    When click("/html/body/footer/div/p/a")
    Then match driver.url == "https://benhowdle.im/"
