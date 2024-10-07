require_relative 'page/cartpage.rb'

describe 'Cart Section' do

  it 'clicks the cart icon and checks cart page' do
     
    cartpage = CartPage.new
    expect(cartpage.cart_page.header_text).to eq("Your Amazon Cart is empty.")
    expect(cartpage.cart_page.paragraph_text).to eq("Your shopping cart is waiting. Give it purpose – fill it with groceries, clothing, household supplies, electronics and more.\nContinue shopping on the Amazon.in homepage, learn about today's deals, or visit your Wish List.")
    expect(cartpage.cart_page.all_link_normal).to eq(["Amazon.in homepage", "today's deals", "Wish List"])
    expect(cartpage.cart_page.sub_header_text).to eq("Your Items")
    expect(cartpage.cart_page.sub_paragraph_text).to eq("No items to Buy again.")
    expect(cartpage.cart_page.last_paragraph_text).to eq(["The price and availability of items at Amazon.in are subject to change. The shopping cart is a temporary place to store a list of your items and reflects each item's most recent price.", "Do you have a promotional code? We'll ask you to enter your claim code when it's time to pay."])

  end
    
end