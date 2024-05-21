Given('[page object] I am on the homepage web recruiter') do
  @login_page = LoginPage.new
  @login_page.load
end

When('[page object] I fill my credentials on the homepage') do
  @login_page.validate_page
end

When('[page object] I click sign in on the homepage') do
  @login_page.input_username
  @login_page.input_password
  @login_page.click_btn_login
end

When('[page object] Click Job Vacancy Management') do
  @home_page = HomePage.new
  @home_page.click_menu_job_vacancy_mgt
end

When('[page object] Click Master Pre Screening') do
  @home_page.click_master_pre_screening
end

When('[page object] Click Create A Question button') do
  @master_pre_screening_inq = MasterPreScreeningInq.new
  @master_pre_screening_inq.click_btn_create_question
end

When('[page object] Select category {string}') do |category|
  @master_pre_screening_new = MasterPreScreeningNew.new
  @master_pre_screening_new.input_category
  find(:xpath,"//option[contains(text(), '#{category}')]").click
end

When('[page object] Select type {string}') do |type|
  @master_pre_screening_new.input_type
  find(:xpath,"//option[contains(text(), '#{type}')]").click
end

When('[page object] Insert question {string}') do |question|
  @master_pre_screening_new.input_question
  find(:xpath,"//textarea[@name='question_formWidget']").set(question)
end

When('[page object] Click Save Button') do
  @master_pre_screening_new.click_btn_save
end

Then('[page object] Show Pre-Screening Question Master Inquiry') do
  @master_pre_screening_inq.validate_page
end
