Feature: GET Resetar

Background: 
    * def auth = call read("classpath:barrigaRest/feature/auth.feature")

Scenario: Resetar a aplicação
    Given url 'https://barrigarest.wcaquino.me/reset'
    And header Authorization = 'JWT '+ auth.response.token
    When method GET
    Then status 200
    * print response
    
