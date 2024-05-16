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

Then('I should be logged in') do
  find(:xpath, "//label[@name='label1' and contains(text(),'Home')]").should be_visible
end
