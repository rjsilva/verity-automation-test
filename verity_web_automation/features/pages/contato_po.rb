class ContatoPage < SitePrism::Page


  element :input_empresa, 'input[name=empresa]'
  element :input_nome, 'input[name=nome]'
  element :input_email, 'input[name=email]'
  element :input_telefone, 'input[name=telefone]'
  element :select_assunto, :xpath, '//select[@data-v-b29379a0]'
  element :text_area_mensagem, 'textarea[name=mensagem]'
  element :button_enviar, :xpath, '//button[text()="Enviar"]'

  def preenche_dados_contato
    self.input_empresa.set("teste")
    self.input_nome.set("ronaldo")
    self.input_email.set("silva@hotmail.com")
    self.input_telefone.set("1196210-9365")
    self.select_assunto.select("Elogios")
    self.text_area_mensagem.set('great opportunity')
  end

  def wait_message_sucess
    message = "Enviar Carregando..."
    while message == "Enviar Carregando..."
      puts "carregando... #{message}"
      message = find('div[class=button]').text
    end
  end

end
