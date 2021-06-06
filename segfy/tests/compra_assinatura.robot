***Settings***
#Arquivo principal dos testes automatizados

#Indicação do uso do arquivo base para a execução dos testes automatizados
Resource        base.robot

#Execução antes dos testes
Test Setup      Nova seção
#Execução após os testes
Test Teardown   Encerra seção

***Test Cases***
Cadastro de Usuario Trial e compra da assinatura
#Variáveis para armazenamento dos dados que serão cadastrados
    ${nomefake}                 FakerLibrary.Name
    ${emailfake}                FakerLibrary.Email
    ${telefonefake}             FakerLibrary.Phone Number
    ${empresafake}              FakerLibrary.Name

#Clica para aceitar os cookies da página a fim de evitar possíveis falhas na execução dos testes
    Click Element               id:hs-eu-confirmation-button
    Sleep           1
#Clica para maximizar e minimizar a tela do atendimento via chat a fim de evitar possíveis falhas na execução dos testes
    Click Element               class:hoverl_85b0
    Sleep           1
    Click Element               id:jivo_close_button
    Sleep           1
#Inserção dos dados fake
    Input text                  id:cphMaster_cphMasterTemplate_txtNome                      ${nomefake}
    Sleep           1
    Input text                  id:cphMaster_cphMasterTemplate_txtEmail                     ${emailfake}
    Sleep           1
    Input text                  id:cphMaster_cphMasterTemplate_txtTelefone                  ${telefonefake}
    Sleep           1
    Input text                  id:cphMaster_cphMasterTemplate_txtEmpresa                   ${empresafake}
    Sleep           1
#Clica no botão Próximo passo
    Click Element               id:cphMaster_cphMasterTemplate_btnNextStep
    Sleep           5

#Seleciona o 3º item da lista Número de Funcionários e verifica se o texto é 3 a 4 pessoas
    Select From List By Value   id:cphMaster_cphMasterTemplate_ddlColaboradores             3
    ${selecionado}=             Get Selected List Label         id:cphMaster_cphMasterTemplate_ddlColaboradores
    Should Be Equal             ${selecionado}                  3 a 4 pessoas
    Sleep           1
#Inserção de mais dados fake
    Input text                  id:cphMaster_cphMasterTemplate_txtLoginCorretora           ${empresafake}
    Sleep           1

    Input text                  id:cphMaster_cphMasterTemplate_txtSenha                     123456
    Sleep           1

#Clica no botão para efetivar o cadastro trial e aguarda 45 segundos para o processamento do cadastro
    Click Element               id:cphMaster_cphMasterTemplate_btnIniciarAvaliacao
    Sleep           45

#Fecha a tela de sugestão de instalação da extensão  para o navegador a fim de evitar possíveis falhas na execução dos testes
    Click Element               class:close
    Sleep           3

#Verifica se a página contém o texto de Bem vindo
    Page Should Contain         Bem vindo ao Segfy!

#Clica no link para assinar o sistema    
    Click Element               class:link-assinar
    Sleep           5

#ERRO-NÃO LOCALIZA o elemento do botão Contratar agora!
    Click Element               //div[@class="col-sm-4"]//a[text()="Contratar agora!"]
    Sleep           5

#NÃO TESTADO - Inserção de dados fake
    ${cpffake}                  FakerLibrary.cpf
    Input text                  id:ContentPlaceHolderMaster_CphMasterAutenticado_informacoesCobranca_txtCpfCnpj     ${cpffake}
    Sleep           1

    ${cepfake}                  FakerLibrary.postcode
    Input text                  id:ContentPlaceHolderMaster_CphMasterAutenticado_informacoesCobranca_txtCep         ${cepfake}
    Sleep           1

#NÃO TESTADO - Clicaria no campo de endereço para preencher automaticamente o endereço conforme o CEP
    Click Element               id:ContentPlaceHolderMaster_CphMasterAutenticado_informacoesCobranca_txtEndereco
    Sleep           5

#NÃO TESTADO - Clicaria no botão Perfeito, quero assinar!
    Click Element               id:ContentPlaceHolderMaster_CphMasterAutenticado_btnAssinar
    Sleep           2

#NÃO TESTADO - Verificaria na página a existência do texto "Suas informações foram atualizadas" efetivando a compra da assinatura
    Page Should Not Contain         Suas informações foram atualizadas
    Sleep           3

