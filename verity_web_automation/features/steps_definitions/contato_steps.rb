Dado("que eu acessei a home page da Verity Group") do
  @home = HomeVerityPage.new
  @home.load
end

Quando("eu clicar na opção de menu {string}") do |opcao_menu|
  @home.wait_until_menu_contato_visible
  @home.menu_contato.click
end

Quando("preencher os campos Empresa, Nome, Email, Telefone, Assunto e Mensagem") do
  CapybaraRobot.new.scroll(682)
  @contato = ContatoPage.new
  @contato.wait_until_input_empresa_visible
  @contato.preenche_dados_contato
end

Quando("clicar no botão {string}") do |botao|
  @contato.button_enviar.click
  @contato.wait_message_sucess
end

Então("o site irá registrar o envio apresentando uma mensagem de que a mensagem foi enviada com sucesso") do
  expect(find('div[class=button]').text()).to eql('Enviar Sua mensagem foi enviado com sucesso!')
end
