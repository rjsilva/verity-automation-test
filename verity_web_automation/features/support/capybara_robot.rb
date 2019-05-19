class CapybaraRobot < SitePrism::Page

  #faz um mouseover no produto
  def mouse_over(element)
    page.execute_script("$('#{element}').trigger('mouseenter')")
  end

  #faz um scrool na página com posição incial e final
  def scroll(start_position = 0, end_position)
    page.execute_script "window.scrollBy(#{start_position},#{end_position})"
  end

  #faz um scroll up na página
   def scroll_up(start_position = 0, end_position = 0)
     page.execute_script "window.scrollTo(#{start_position},#{end_position})"
   end

  #digita um conteudo nos inputs que forem readonly
  def set_on_readonly(element, text)
    page.execute_script("$('#{element}').val('#{text}')")
  end

  #recupera o atributo do elemento
  def get_atributo(element)
    page.evaluate_script("$('#{element}').attr('class');")
  end

end
