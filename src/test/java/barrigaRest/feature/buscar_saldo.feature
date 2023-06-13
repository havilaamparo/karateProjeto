Feature: GET saldo

  Background: 
    * def auth = call read("classpath:barrigaRest/feature/auth.feature")
  Scenario: Pegar saldo
    Given url 'https://barrigarest.wcaquino.me/saldo'
    And header Authorization = 'JWT '+ auth.response.token
    When method GET
    Then status 200
    * print response
