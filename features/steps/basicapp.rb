Given("I open quick fuse app link") do
  visit(AppPage)
end

Then("I click on Create an app button") do
  on(AppPage).open_app_page
end

Then("I see a popup") do
  on(EditPage).view_pop_up
end

Then("I click on Let's get started button") do
  on(EditPage).get_started
end

Then("I see application panel") do
  is_app_panel_visible = on(EditPage).see_app_panel
  expect(is_app_panel_visible).to eq(true)
end

#Then("I see Basic tab is opened with following sections on left hand side column") do |table|

#end

Then("I see Messaging tab on left hand side column") do
   is_messaging_tab_visible = on(EditPage).view_messaging_tab
   expect(is_messaging_tab_visible).to eq(true)
end

Then("I click on Messaging tab") do
   on(EditPage).click_messaging_tab
end

#Then("I see following sections") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
#end

Then("I see Start module on application panel") do
  is_start_module_visible = on(EditPage).view_start_module
  expect(is_start_module_visible).to eq(true)
end

Then("I click on New page button") do
  on(EditPage).add_page
end

Then("I see New Page popup") do
  pop_up = on(EditPage).see_newpage_popup
  expect(pop_up).to eq(true)
end

Then("I enter name for {string}") do |string|
  on(EditPage).enter_new_name(string)
end

Then("I drag Send an SMS module to application panel") do
  on(EditPage).module_send_n_sms
end

Then("I see Sent and Not Sent ports") do
  on(EditPage).sms_module_ports
end

Then("I connect Start and Send an SMS modules") do
   on(EditPage).connect_sms_module
end

Then("I enter number for {string}") do |string|
  on(EditPage).set_phone_number(string)
end

Then("I enter message for {string}") do |string|
  on(EditPage).set_message_text(string)
end

Then("I drag another component Send an Email to application panel") do
  on(EditPage).module_send_an_email
end

And("I enter host name as {string}") do |string|
  on(EditPage).host_name(string)
end

And("I enter port number as {string}") do |string|
  on(EditPage).port_number(string)
end

And("I enter user name as {string}") do |string|
  on(EditPage).user_email(string)
end

And("I enter password as {string}") do |string|
  on(EditPage).enter_password(string)
end

And("I enter From address as {string}") do |string|
  on(EditPage).from_address(string)
end

And("I enter To as {string}") do |string|
  on(EditPage).to_address(string)
end

And("I enter subject as {string}") do |string|
  on(EditPage).enter_subject(string)
end

And("I enter message text as {string}") do |string|
  on(EditPage).enter_msg(string)
end

Then("I join Send an SMS component from Not Sent port to Send an Email component") do

end

Then("I click on Basic tab") do

end

Then("I drag Hang Up or Exit component to application panel") do

end

Then("I join Hang Up or Exit component from Sent port to Send an SMS component") do

end

Then("I drag second Hang up or Exit component to application panel") do

end

Then("I join Hang Up or Exit component from Not Sent port to Send an Email component") do

end

Then("I drag third Hang up or Exit component to application panel") do

end

Then("I join Hang Up or Exit component from Sent port to Send an Email Component") do

end




