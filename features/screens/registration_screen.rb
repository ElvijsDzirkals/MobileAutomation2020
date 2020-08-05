class RegistrationScreen

  def initialize
    @register_tab_button = Elements.new(:xpath, '//android.widget.TextView[@text="REGISTER"]')
    @first_name_field = Elements.new(:id, 'firstName')
    @last_name_field = Elements.new(:id , 'lastName')
    @email_field = Elements.new(:id , 'email')
    @password_field = Elements.new(:id , 'password')
    @repassword_field = Elements.new(:id , 'repassword')
    @eye_icons = Elements.new(:id, 'text_input_password_toggle')
    @register_button = Elements.new(:xpath , '//android.widget.Button[@text="REGISTER"]')
    @cancel_offer_button = Elements.new(:id,'btn_cancel')
  end

  def click_register_tab_button
    @register_tab_button.click
  end

  def click_all_eye_icons
    @eye_icons.click_every_element_in_the_list
  end

  def click_cancel_offer_button
    @cancel_offer_button.click
  end

  def click_register_button
    @register_button.click
  end

  def set_first_name(text)
    @first_name_field.set(text)
  end

  def set_last_name(text)
    @last_name_field.set(text)
  end

  def set_password(text)
    @password_field.set(text)
  end

  def set_repassword(text)
    @repassword_field.set(text)
  end

  def set_email(text)
    @email_field.set(text)
  end

end