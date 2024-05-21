class LoginPage < SitePrism::Page
  include Capybara::DSL
  include Capybara::Node::Matchers
  include RSpec::Matchers

  set_url ('https://fif-internal.solecode.tech/#/Login')

  element :txt_username, :xpath, "//input[@name='j_username']"
  element :txt_password, :xpath, "//input[@name='j_password']"
  element :btn_login, :xpath, "//span[@class='btn-caption' and contains(text(),'Log In')]"

  def input_username
    txt_username.set("45428")
  end

  def input_password
    txt_password.set("password")
  end

  def click_btn_login
    btn_login.click
  end

  def validate_page
    btn_login.should be_visible
  end

end
