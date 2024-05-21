class MasterPreScreeningInq < SitePrism::Page
  include Capybara::DSL
  include Capybara::Node::Matchers
  include RSpec::Matchers

  element :btn_create_question, :xpath, "//span[@class='btn-caption' and contains(text(),'Create A Question')]"

  def click_btn_create_question
    btn_create_question.click
  end

  def validate_page
    btn_create_question.should be_visible
  end

end
