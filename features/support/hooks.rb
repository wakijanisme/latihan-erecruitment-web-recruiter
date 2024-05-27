Before do |scenario|
  page.windows[0].maximize
end

After do |scenario|
  sleep 5
end

AfterStep do |scenario|
  sleep 2
  # take_screenshot
end


Before ('@login-hcms') do
  # page.windows[0].maximize
end

After ('@login-hcms') do
  puts "hooks setelah dijalankan"
end

at_exit do
  #  generate_report

  # # Kernel.exit(0)
end
