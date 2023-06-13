Feature: GET extrato

Background:
    * def auth = call read("classpath:barrigaRest/feature/auth.feature")

@teste
Scenario: Consultar todos os extratos
    Given url 'https://barrigarest.wcaquino.me/extrato/202306'
    And header Authorization = 'JWT ' + auth.response.token
    When method GET
    Then status 200
    * print response
