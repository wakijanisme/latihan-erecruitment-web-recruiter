Before do |scenario|
  #page.windows[0].maximize
end

After do |scenario|
  sleep 5
end


Before ('@login-hcms') do
  page.windows[0].maximize
end

After ('@login-hcms') do
  puts "hooks setelah dijalankan"
end
