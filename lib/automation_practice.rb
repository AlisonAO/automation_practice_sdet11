#  require relative's will go here for each page
require_relative 'pages/sign_in/create_account'
require_relative 'pages/sign_in/forgotten_password'
require_relative 'pages/sign_in/login'
require_relative 'pages/checkout/checkout'
require_relative 'pages/cart'

class AutomationPracticeSite

    def forgotpassword
        ForgotPassword.new
    end

    def login
        Login.new
    end

    def zcheckout
      Checkout.new
    end
end
