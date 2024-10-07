class Homepage < SitePrism::Page
  set_url 'https://www.amazon.in/'

  def navigate
    load
  end

  element :login_button, 'a#nav-link-accountList'

  def click_login
    login_button.click
  end

  element :username_input, 'input.a-input-text'
  element :continue_button, 'input.a-button-input'
  element :password_input, 'input#ap_password'
  element :signin_button, 'input#signInSubmit'

  def enter_mobile_number
    username_input.set("9025986867")
    continue_button.click
  end

  def enter_password
    password_input.set("yuva@2225")
    signin_button.click
  end

  # section :menu_section, 'div#nav-main div.nav-left' do
  #   element :menu_button, 'a#nav-hamburger-menu'

  #   def click_menu
  #     menu_button.click
  #   end
    
  # end
  # section :menu, 'div#hmenu-canvas.nav-ignore-pinning.hmenu-translateX' do
    
  #   def all_menu_titles
  #     find_all("div.hmenu-item.hmenu-title").select{|element|element}.map{|element|element.text}
  #   end

  #   def all_menu_subtitles
  #     find_all("li a.hmenu-item").select{|element|element}.map{|element|element.text}
  #   end
  # end
  
  section :cart_section, 'div.nav-right div#nav-tools.layoutToolbarPadding' do
    def click_cart
      find('a#nav-cart.nav-a.nav-a-2.nav-progressive-attribute').click
    end
  end

  # section :language_option, 'div.nav-right #nav-tools' do
    # element :language_button, '#icp-nav-flyout.nav-a.nav-a-2.icp-link-style-2'
    # element :language_button_text, 'span.icp-nav-link-inner' 
  
    # def hover_language
      # language_button.hover
    # end

    # def get_language_text
    #   language_button_text.text
  # end
end
