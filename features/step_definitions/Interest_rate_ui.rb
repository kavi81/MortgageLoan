Given(/^Open the pnc mortage page url$/) do
  @interest_rate = Check_rate.new($browser);sleep 2
  @interest_rate.visit ;sleep 2
end

When(/^user should enter the loan amt and zipcode$/) do
 @interest_rate.get_zipcode('20000','43230')
end

Then(/^get the interest_rate for that zipcode$/) do
 @interest_rate.click_rate;sleep 2
 @interest_rate.row_rates;sleep 2
 @interest_rate.rates; sleep 2
end

And(/^display the rates$/) do
  @interest_rate.get_rates;sleep 2
end