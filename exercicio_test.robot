*** Settings ***
Documentation            Testes visando responder o exercicio da 2ª semana,
...                      proposto pela PHA.
Resource                 exercicio_resources.robot
Test Setup

*** Test Cases ***
Caso de Teste 01: Cenario: Exibir nome no console
    Exibir nome, idade, rua, numero, cep, bairro, cidade e estado no console a partir de um dicionário    Carlos    36    Felix    150    983000   Sulgon    Palmeira das Missões    RS


Caso de Teste 02: Exercício Argumentos e Retornos + If Simples
    Subtrair o ano atual menos a 12 para saber quando o usuario 1990


Caso de Teste 03: Exercício For Simples + Lista
    Exiba cada uma das frutas de uma lista usando um For Simples


Caso de Teste 04: Exercício If Inline + For in Range
    Contar quantos números pares existem entre 0 e 10, usando if inline


Caso de Teste 05: Exercício Try + Except + Finally
    Criar nova lista só com os números, tratar os caracteres como exceção e exibir a nova lista a cada iteração usando Finally