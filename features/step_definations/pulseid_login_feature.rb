Given(/^I open PulseiD app in the browser$/) do
  visit(PulseidPage)
end

Then(/^I click on Sign in with VOL button$/) do
  on(PulseidPage).open_app_page
end

Then("I enter email address and password") do
  on(PulseidPage).login(@data["login_email"], @data["login_password"])
end


And(/^I click on Sign in button$/) do
  on(PulseidPage).click_to_enter
end

Then(/^I should be taken to Offers tab view$/) do
  on(PulseidPage).validate_logged_in_view
end
