#  require relative's will go here for each page
require_relative 'pages/sign_in/create_account'
require_relative 'pages/sign_in/forgotten_password'
require_relative 'pages/sign_in/login'
require_relative 'pages/myaccountpage'
require_relative 'pages/mywishlistpage'
require_relative 'pages/cart'
require_relative 'pages/productpage'
require_relative 'pages/addressespage'
require_relative 'pages/cart'
require_relative 'pages/navbar'

class AutomationPracticeSite

    def forgotpassword
        ForgotPassword.new
    end

    def login
        Login.new
    end

    def myaccountpage
      MyAccountPage.new
    end

<<<<<<< HEAD
    def mywishlistpage
      MyWishListPage.new
    end

    def productpage
      ProductPage.new
=======
    def addressespage
      AddressesPage.new
>>>>>>> dev
    end

end
