class CartPage < SitePrism::Page
    set_url'https://www.amazon.in/gp/cart/view.html?ref_=nav_cart'
  
    section :cart_page, 'div#sc-retail-cart-container #sc-cart-column' do
    
        def header_text
            find('h2.a-size-extra-large.a-spacing-mini.a-spacing-top-base.a-text-normal').text
        end

        def paragraph_text
            find('#activeCartViewForm p').text
        end
    
        def all_link_normal
            find_all('p a.a-link-normal').select{|element| element }.map{|element| element.text}
        end
 
        def sub_header_text
            find('h3.a-size-large.a-text-bold.a-text-normal').text
        end

        def sub_paragraph_text
            find('div.a-row.sc-repurchase-container.sc-empty-recommendation').text
        end
    
        def last_paragraph_text
            find_all('div#sc-about p').select{|x| x}.map{|x| x.text}
        end
    end
end
  