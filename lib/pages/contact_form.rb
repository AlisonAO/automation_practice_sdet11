require 'capybara/dsl'

CONTACT_URL = "http://automationpractice.com/index.php?controller=contact"
SUBJECT_HEADER = '#id_contact'
EMAIL_FORM = '#email'
ORDER_REFERENCE = '#id_order'
FILE_ATTACH = '#fileUpload'
MESSAGE_FIELD = '#message'


class Contact
  include Capybara::DSL

  def contact_url
    find(CONTACT_URL)
  end

  def subject_header
    find(SUBJECT_HEADER)
  end

  def click_subject_header
    subject_header.click
  end

  def email_form
    find(EMAIL_FORM)
  end

  def click_email_form
    email_form.click
  end

  def order_reference_no
    find(ORDER_REFERENCE)
  end

  def click_order_reference
    order_reference_no.click
  end

  def file_upload
    find(FILE_ATTACH)
  end

  def click_file_upload
    file_upload.click
  end

  def select_message
    find(MESSAGE_FIELD)
  end

  def message_write
    select_message.fill_in('hello!')
  end

end
