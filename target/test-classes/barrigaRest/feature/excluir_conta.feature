Feature: DELETE conta

Background:
    * def auth = call read("classpath:barrigaRest/feature/auth.feature")
    * def consultarContas = call read("classpath:barrigaRest/feature/buscar_contas.feature")

Scenario: Delecar uma conta
    Given url 'https://barrigarest.wcaquino.me/contas/'+consultarContas.response[0].id
    And header Authorization = 'JWT ' + auth.response.token
    When method DELETE
    Then status 204
    * print response
