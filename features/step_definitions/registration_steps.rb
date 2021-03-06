Given(/^I get to the registration form$/) do
  @screens.home_screen.click_burger_menu
  @screens.home_screen.click_sign_in_or_register_button
  @screens.registration_screen.click_register_tab_button
end

When(/^I input random user credentials in registration form$/) do
  @first_name = "name#{rand(1..99999)}"
  last_name = "lastname#{rand(1..99999)}"
  email = "hurre#{rand(1..99999)}@email.com"
  password = "Parole123"
  @screens.registration_screen.set_first_name(@first_name)
  @screens.registration_screen.set_last_name(last_name)
  @screens.registration_screen.set_email(email)
  @screens.registration_screen.set_password(password)
  @screens.registration_screen.set_repassword(password)
end

And(/^I click on the eye icons to reveal the passwords$/) do
  @screens.registration_screen.click_all_eye_icons
end

And(/^I decline the exclusive offers$/) do
  @screens.registration_screen.click_cancel_offer_button
end

And(/^I submit the registration details$/) do
  @screens.registration_screen.click_register_button
end

Then(/^the correct welcome message is displayed with my name$/) do
  @screens.account_screen.validate_welcome_message(@first_name)
end