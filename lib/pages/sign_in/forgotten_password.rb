require 'capybara/dsl'

class ForgotPassword
    include Capybara::DSL

    FORGOT_PASSWORD_PAGE_LINK = 'http://automationpractice.com/index.php?controller=password'
    USERNAME_FIELD_ID = "#email"
    RETRIEVE_PASSWORD_BUTTON_XPATH = '//*[@id="form_forgotpassword"]/fieldset/p/button'
    # RETRIEVE_PASSWORD_BUTTON_CSS = '#email'

    def visit_forgotten_password_page
        find(FORGOT_PASSWORD_PAGE_LINK)
    end

    def username_field
        find(USERNAME_FIELD_ID)
    end

    def input_username(username)
        username_field.send_keys(username)
    end

    def retrieve_password_button
        find(:xpath, RETRIEVE_PASSWORD_BUTTON_XPATH)
    end

    def retrieve_password_button_click
        retrieve_password_button.click

    end

    #

end
