require_relative 'page/a.homepage.rb'

describe 'Amazon Homepage' do

  it 'loads the homepage and verifies login page' do
        
    homepage = Homepage.new
    homepage.navigate
    homepage.click_login
    homepage.enter_mobile_number
    homepage.enter_password

    # homepage.navigate
    # homepage.menu_section.click_menu
    # expect(homepage.menu.all_menu_titles).to eq(["Trending", "Digital Content and Devices", "Shop by Category", "Programs & Features", "Help & Settings"])
    # expect(homepage.menu.all_menu_subtitles).to eq(["Best Sellers", "New Releases", "Movers and Shakers", "Echo & Alexa", "Fire TV", "Kindle E-Readers & eBooks", "Audible Audiobooks", "Amazon Prime Video", "Amazon Prime Music", "Mobiles, Computers", "TV, Appliances, Electronics", "Men's Fashion", "Women's Fashion", "See all", "Amazon Pay", "Gift Cards & Mobile Recharges", "Amazon Launchpad", "Amazon Business", "See all", "Your Account", "Customer Service", "Sign Out"])


    homepage.navigate
    homepage.cart_section.click_cart

  end
end


  


