require 'capybara/dsl'

class MyAccountPage
  include Capybara::DSL

#Page objects below
  MY_ACCOUNT_PAGE_URL = 'http://automationpractice.com/index.php?controller=my-account'
  MY_ADDRESSES_LINK = '//*[@id="center_column"]/div/div[1]/ul/li[3]/a'
  MY_PERSONAL_INFORMATION_LINK = '//*[@id="center_column"]/div/div[1]/ul/li[4]/a'

  


end
