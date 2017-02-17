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
  fill_in("jugador", :with => "Aaron")
  click_button("iniciar")
end

Then(/^debo poder ver una palabra enmascarada "([^"]*)"$/) do |palabra|
  expect(page.body).to match /#{palabra}/m
end

When(/^ingreso una letra "([^"]*)" caracter$/) do |letra|
  fill_in("caracter", :with => letra)
end

When(/^verifico el caracter$/) do
  click_button("buscar")
end
