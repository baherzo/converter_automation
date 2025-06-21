# features/step_definitions/first_steps.rb

Given(/^I click on Got it button$/) do
  puts 'Clicked Got it button'
  find_element(id: 'android:id/button1').click
end

And(/^I see "([^"]+)" in From header$/) do |expected|
  actual = find_element(id: 'header_text_unit_from').text
  unless actual == expected
    raise "Expected \"#{expected}\", but got \"#{actual}\""
  end
end

And(/^I see "([^"]+)" in To header$/) do |expected|
  actual = find_element(id: 'header_text_unit_to').text
  unless actual == expected
    raise "Expected \"#{expected}\", but got \"#{actual}\""
  end
end

When(/^I click on Swap button$/) do
  find_element(id: 'fab').click
end
