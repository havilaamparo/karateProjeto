Feature: Autenticação

Scenario: Pegar o token
    Given url 'https://barrigarest.wcaquino.me/signin'
    And request {email: "a@a", senha: "a", redirecionar: false}
    When method post
    Then status 200
    * print response