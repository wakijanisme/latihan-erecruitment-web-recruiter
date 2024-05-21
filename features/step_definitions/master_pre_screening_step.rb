Given('I am on the homepage web recruiter') do
  visit ('https://fif-internal.solecode.tech/#/Login')
end

When('I click sign in on the homepage') do
  find(:xpath, "//span[@class='btn-caption' and contains(text(),'Log In')]").should be_visible
end

When('I fill my credentials on the homepage') do
  find(:xpath, "//input[@name='j_username']").set("45428")
  find(:xpath, "//input[@name='j_password']").set('password')
  find(:xpath, "//span[@class='btn-caption' and contains(text(),'Log In')]").click
end

When('Click Job Vacancy Management') do
  find(:xpath, "//span[@class='anchor-caption' and contains(text(),'Job Vacancy Management')]").click
  sleep 2
end

When('Click Master Pre Screening') do
  find(:xpath, "//span[@class='anchor-caption' and contains(text(),'Master Pre-Screening')]").click
  sleep 2
end

Then('I should be logged in') do
  find(:xpath, "//label[@name='label1' and contains(text(),'Home')]").should be_visible
  sleep 2
end

Then('Show Pre-Screening Question Master Inquiry') do
  find(:xpath, "//label[@name='label1' and contains(text(),'Pre-Screening Question Master')]").should be_visible
  sleep 1
end

When('Click Create A Question button') do
  find(:xpath,"//span[@class='btn-caption' and contains(text(),'Create A Question')]").click
  sleep 1
end

When('Select Category') do
  find(:xpath,"//select[@name='categoryId_formWidget']").click
  sleep 1
  find(:xpath,"//option[@value='4: 2' and contains(text(), 'Developmental Program')]").click
  sleep 1
end

When('Select Type = text') do
  find(:xpath,"//select[@name='type_formWidget']").click
  sleep 1
  find(:xpath,"//option[contains(text(), 'Text')]").click
  sleep 1
end

When('Insert Question') do
  find(:xpath,"//textarea[@name='question_formWidget']").click
  find(:xpath,"//textarea[@name='question_formWidget']").set('Test automation 1')
  sleep 1
end

When('Click Save Button') do
  find(:xpath,"//span[@class='btn-caption' and contains(text(), 'Save')]").click
end

When('Select category {string}') do |category|
  find(:xpath,"//select[@name='categoryId_formWidget']").click
  find(:xpath,"//option[contains(text(), '#{category}')]").click
end

When('Select type {string}') do |type|
  find(:xpath,"//select[@name='type_formWidget']").click
  find(:xpath,"//option[contains(text(), '#{type}')]").click
end

When('Insert question {string}') do |question|
  find(:xpath,"//textarea[@name='question_formWidget']").click
  find(:xpath,"//textarea[@name='question_formWidget']").set(question)
end
