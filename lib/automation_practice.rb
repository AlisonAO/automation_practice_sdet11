require_relative 'pages/myaccountpage'
require_relative 'pages/addressespage'

class AutomationPracticeSite

  def myaccountpage
    MyAccountPage.new
  end

  def addressespage
    AddressesPage.new
  end

end
