require_relative 'helper.rb'

Before do
  Capybara.reset_sessions!
end

After do |scenario|
  scenario_name = scenario.name.gsub(/[^A-Za-z ]/, '').gsub(/\s+/, '_')

  if scenario.failed?
    take_screenshot(scenario_name.downcase!, 'failed')
  else
    take_screenshot(scenario_name.downcase!, 'passed')
  end
  puts "\nURL Atual: #{Capybara.current_url}"
  Capybara.current_session.driver.quit
end
