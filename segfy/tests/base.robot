***Settings***
#Esse arquivo base.robot serve como base para o arquivo de testes principais cadastro.robot

#Utilização da Biblioteca do Selenium
Library         SeleniumLibrary
#Utilização da Biblioteca FakerLibrary para a inserção de dados aleatórios não veradeiros
Library         FakerLibrary    locale=pt_BR

***Variables***
#Variável para armazenar a url inicial que será acessada para a execução dos testes
${url}                          https://homol-www.segfy.com/Experimente


***Keywords***
#Keyword Nova seção para ser executada antes dos testes automatizados
Nova seção
    #Abrir o navegador Chrome e acessar a URL inicial
    Open Browser                    ${url}                  chrome
    #Maximizar a janela do Chrome
    Maximize Browser Window

#Keyword Encerra seção para ser executada depois dos testes automatizados
Encerra seção
    #Capturar uma screenshot da tela final dos testes
    Capture Page Screenshot
    #Fechar o navegador
    Close Browser