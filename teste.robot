** Settings **

Library  SeleniumLibrary

** Variables **
${SITE_URL}    https://automationpratice.com.br/
${SITE_URL2}    https://www.google.com/ 
${USUARIO_EMAIL}    qazando@teste.com
${USUARIO_SENHA}    123456

** Keywords **

Acessar site google

    Open Browser  ${SITE_URL2}   chrome

Acessar site da qazando

    Open Browser  ${SITE_URL}  chrome
    Esperar Elemento    2

Abrir esse site 
    [Arguments]  ${url}
    Open Browser  ${url}  chrome


Aguardar site carregar
    Sleep  5s

Clicar sobre o botão login
    Click Element    xpath://a[@href='/login']

Digitar email
    Input Text  id:user  ${USUARIO_EMAIL} 

Digitar senha
    Input Text  id:password  ${USUARIO_SENHA} 

Clicar em logar
    Click Element  id:btnLogin
    Esperar Elemento    2

Verificar texto login realizado

    ${texto_atual}  Get Text  id:swal2-title
    Should Be Equal As Strings    ${texto_atual}    Login realizado

Tirar Print
    Capture Page Screenshot

Esperar Elemento
    [Arguments]    ${tempo}
    Set Selenium Implicit Wait    ${tempo}s

** Test Cases **

Cenário 1: Acessando o site da QAZANDO

    Acessar site da qazando
    Clicar sobre o botão login
    Digitar email
    Digitar senha
    Clicar em logar
    Verificar texto login realizado
    Tirar Print

Cenário 2: Acessando o site da Google
    [Tags]    Teste2
    Acessar site google
    Aguardar site carregar

Cenário 3: Acessando o site da Google
    [Tags]    Teste3
    Abrir esse site  https://www.google.com/
    Aguardar site carregar