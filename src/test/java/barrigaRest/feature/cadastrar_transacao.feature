Feature: POST Cadastrar transação

  Background:
    * def auth = call read("classpath:barrigaRest/feature/auth.feature")
    * def body = read('classpath:barrigaRest/feature/support/cadastrar_transacao.json')
    * def consultarContas = call read("classpath:barrigaRest/feature/buscar_contas.feature")
    * def gerador = Java.type('support.Gerador')
    * def gerarDataPagamento = gerador.gerarData()
  @teste
  Scenario: Cadastrar uma transação
    * set body.conta_id = consultarContas.response[0].id
    * set body.data_pagamento = gerarDataPagamento
    * set body.data_transacao = gerarDataPagamento
    Given url 'https://barrigarest.wcaquino.me/transacoes'
    And header Authorization = 'JWT ' + auth.response.token
    And request body
    When method POST
    Then status 201
    * print response
    
