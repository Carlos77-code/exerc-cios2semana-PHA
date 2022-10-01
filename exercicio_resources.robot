*** Settings ***
Library            DebugLibrary


*** Variables ***          
${ANO_ATUAL}            2022

*** Keywords ***
Exibir nome, idade, rua, numero, cep, bairro, cidade e estado no console a partir de um dicionário
    [Arguments]       ${nome}=    ${idade}=    ${rua}=    ${numero}=    ${cep}=    ${bairro}=    ${cidade}=    ${estado}=    
    Log To Console    ${EMPTY}
    Log To Console    ${nome}
    Log To Console    ${idade}
    Log To Console    ${rua}
    Log To Console    ${numero}
    Log To Console    ${cep}
    Log To Console    ${bairro}
    Log To Console    ${cidade}
    Log To Console    ${estado}

Subtrair o ano atual menos a ${IDADE} para saber quando o usuario ${ANO_DE_NASCIMENTO}
         Log To Console    ${EMPTY}
          ${ANO_DE_NASCIMENTO}   Evaluate   ${ANO_ATUAL} - ${IDADE}
    IF    ${ANO_DE_NASCIMENTO} < 2000 
         Log To Console    quem nasce no ano de ${ANO_DE_NASCIMENTO} faz parte do seculo passado
    ELSE
         Log To Console    quem nasce no ano de ${ANO_DE_NASCIMENTO} é da nova geração
    END

Exiba cada uma das frutas de uma lista usando um For Simples
    Log To Console    ${EMPTY}
    @{LIST}    Create List    Caju    Laranja    Manga
    FOR    ${FRUTAS}    IN    @{LIST}
        Log to console    ${FRUTAS}
    END


Contar quantos números pares existem entre 0 e 10, usando if inline
    Log To Console    ${EMPTY}
    FOR    ${counter}    IN RANGE   11
      IF    ${counter} %2 == 0
        Log To Console  ${counter}
      END
    END


Criar nova lista só com os números, tratar os caracteres como exceção e exibir a nova lista a cada iteração usando Finally
    Log To Console    ${EMPTY}
    @{LIST}   Create List      1    2    3
    ${LIST_CARACT}    Create List    A  B  C
    TRY
       IF   ${LIST} != ${LIST_CARACT}
              Fail    Deu certo
        END
    EXCEPT    
        Log To Console     ${LIST_CARACT}       
    FINALLY
        Log To Console    ${LIST}
    END