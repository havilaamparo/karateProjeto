Feature: POST Contas

Background:
    * def auth = call read("classpath:barrigaRest/feature/auth.feature")
    * def autha = call read("classpath:support/resetarAplicacao.feature")

    

Scenario: Cadastrar uma conta
    Given url 'https://barrigarest.wcaquino.me/contas'
    And header Authorization = 'JWT ' + auth.response.token
    And request {nome: "asd"}
    When method POST
    Then status 201 
    * print response
