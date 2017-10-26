require 'capybara/dsl'


class Contact
  include Capybara::DSL

  CONTACT_URL = "http://automationpractice.com/index.php?controller=contact"
  SUBJECT_HEADER = '#id_contact'
  EMAIL_FORM = '#email'
  ORDER_REFERENCE = '#id_order'
  FILE_ATTACH = '#fileUpload'
  MESSAGE_FIELD = '#message'
  MESSAGE_CONFIRMATION = '//*[@id="center_column"]/p'
  SUBMIT_MESSAGE = '#submitMessage'
  DROP_OPTION = '//*[@id="id_contact"]/option[1]'

  def visit_contact_page
    visit(CONTACT_URL)
  end

  def contact_url
    find(CONTACT_URL)
  end

  def subject_header
    find(SUBJECT_HEADER)
  end

  def click_subject_header
    subject_header.click
  end

  def choose_subject_header
    click_subject_header
  end

  def choose_subject
    choose_subject_header.click(DROP_OPTION)
  end



  def email_form
    find(EMAIL_FORM)
  end

  def email_write
    email_form.send_keys('sparta@123.com')
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

  def order_reference_write
    order_reference_no.send_keys('adshdo')
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
    select_message.send_keys('hello!')
  end

  def submit_button
    find(SUBMIT_MESSAGE)
  end

  def send_message
    submit_button.click
  end



end
