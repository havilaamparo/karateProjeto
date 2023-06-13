Feature: GET CONTAS

Background: 
    * def auth = call read("classpath:barrigaRest/feature/auth.feature")
   # * def teste = call read("classpath:barrigaRest/feature/resetarAplicacao.feature")

Scenario: Buscar todas as contas
    Given url 'https://barrigarest.wcaquino.me/contas'
    And header Authorization = 'JWT '+ auth.response.token
    When method GET
    Then status 200
    * print response