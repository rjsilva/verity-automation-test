#Autor:Ronaldo Silva
class HomeVerityPage < SitePrism::Page

  #acessa a url verify group
  set_url CONFIG['qa']

  element :menu_contato, :xpath, '//ul[@data-v-0baeb35c]//li[8]'

end
