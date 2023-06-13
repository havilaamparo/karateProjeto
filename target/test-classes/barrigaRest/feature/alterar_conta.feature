Feature: PUT contas

  Background: 
    * def auth = call read("classpath:barrigaRest/feature/auth.feature")
    * def consultarContas = call read("classpath:barrigaRest/feature/buscar_contas.feature")

  @teste
  Scenario Outline: Alterar uma conta existente
    Given url 'https://barrigarest.wcaquino.me/contas/'+ consultarContas.response[0].id
    And request {nome: "tessste"}
    And header Authorization = 'JWT '+ auth.response.token
    When method PUT
    Then status 200
    * print response

    Examples:
    |statusCode|
    |200|

