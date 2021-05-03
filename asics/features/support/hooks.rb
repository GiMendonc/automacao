Before do
  page.driver.browser.manage.window.maximize
end

After do |cenario|
  sleep 2
  page.save_screenshot("logs/evidencia-CENARIO-(#{cenario.name}).png")
end
