#  require relative's will go here for each page
require_relative 'pages/checkout'

class AutomationPracticeSite
  def checkout
    Checkout.new
  end
end
