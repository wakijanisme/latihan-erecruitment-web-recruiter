class HomePage < SitePrism::Page
  include Capybara::DSL
  include Capybara::Node::Matchers
  include RSpec::Matchers

  element :menu_job_vacancy_mgt, :xpath, "//span[@class='anchor-caption' and contains(text(),'Job Vacancy Management')]"
  element :menu_master_pre_screening, :xpath, "//span[@class='anchor-caption' and contains(text(),'Master Pre-Screening')]"

  def click_menu_job_vacancy_mgt
    menu_job_vacancy_mgt.click
  end

  def click_master_pre_screening
    menu_master_pre_screening.click
  end

end
