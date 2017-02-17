Given(/^que inicie la aplicacion$/) do
  visit '/'
end

Then(/^debo poder ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

When(/^ingreso a "([^"]*)" como jugador$/) do |jugador|
  fill_in("jugador", :with => jugador)
end

When(/^inicio un partido$/) do
  click_button("iniciar")
end

Given(/^inicie la aplicacion$/) do
  visit '/'
  fill_in("jugador", :with => jugador)
  click_button("iniciar")
end

Then(/^debo poder ver una palabra enmascarada$/) do
  pending # Write code here that turns the phrase above into concrete actions
end