# AutomatedTesting_RobotFramework
Automações de testes feitas com a ferramenta Robot Framework


**********************************************************************
PRÉ-REQUISITOS PARA A EXECUÇÃO DOS TESTES AUTOMATIZADOS DESTE PROJETO:
**********************************************************************
1) Ter instalado o ambiente de execução do Robot Framework com Selenium Webdriver
  1.1) Para a elaboração dos scripts de testes deste projeto foi utilizado o Visual Studio Code versão: 1.56.2
  1.2) Para a execução dos testes automatizados foi utilizado o software Console Emulation programn (Cmder), versão 210304

2) Ter instalada a biblioteca FakerLibrary para o cadastro de dados
  2.1) A bilioteca pode ser instalada através do seguinte comando no Cmder: pip install robotframework-faker
  Para mais informações sobre essa instalação pode ser seguido o tutorial disponível no link: http://robotizandotestes.blogspot.com/2018/01/season-libraries-ep-01-library-faker.html
  
**********************************************************************
EXECUÇÃO DOS TESTES AUTOMATIZADOS DESTE PROJETO:
**********************************************************************
  
1) Executar toda a pasta de testes através do seguinte comando no prompt:
robot -d ./log tests

2) Abrir o arquivo de log report.html para verificar como foi a execução dos testes.
