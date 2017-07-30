require 'page-object'
require 'watir-webdriver'

class Check_rate
  include PageObject
  page_url('https://www.pnc.com/en/personal-banking/borrowing/home-lending/mortgages.html')
  text_field(:loan_amt, id: 'purchaseAmount')
  text_field(:rate_zipcode, id: 'zipCode')
  button(:click_rate, id: 'ratesGet')
  div(:row_rates,class: 'row grid-100 tablet-grid-100 mobile-grid-100 rowBar')
  div(:rates, class: 'rowItem grid-19 tablet-grid-20 mobile-grid-19 bigPrint',identifier: 1)

  def visit
    @browser.goto('https://www.pnc.com/en/personal-banking/borrowing/home-lending/mortgages.html')
  end

  def get_zipcode(amt,zipcode)
    self.loan_amt = amt
    self.rate_zipcode = zipcode
  end

  def get_rates
    puts "The rate for 30years,#{rates}"
  end
end