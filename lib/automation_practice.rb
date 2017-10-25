require_relative 'pages/myaccountpage'

class AutomationPracticeSite

  def myaccountpage
    MyAccountPage.new
  end

  def addressespage
    AddressesPage.new
  end

end
