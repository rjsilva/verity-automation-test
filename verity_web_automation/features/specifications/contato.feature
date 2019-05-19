#language:pt
#encoding UTF-8
#Autor:Ronaldo Silva

Funcionalidade: Contato
  Eu como qa quero testar a funcionalidade de dados de contato através do menu 'Contato'
  do site verify group

  Contexto: acessar url da verity group
    * que eu acessei a home page da Verity Group

 @contato
 Cenario: Enviar dados de contatos com sucesso
  Quando eu clicar na opção de menu "Contato"
  E preencher os campos Empresa, Nome, Email, Telefone, Assunto e Mensagem
  E clicar no botão "Enviar"
  Então o site irá registrar o envio apresentando uma mensagem de que a mensagem foi enviada com sucesso
