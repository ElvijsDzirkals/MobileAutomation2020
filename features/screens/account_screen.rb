class AccountScreen

  def initialize
    @welcome_message = Elements.new(:id, 'welcome_message')
  end

  def validate_welcome_message(expected_name)
    expected_text = "Welcome, #{expected_name}"
    actual_text = @welcome_message.get_text
    raise "Incorrect text! Expected: [#{expected_text}], actual: [#{actual_text}]" unless expected_text == actual_text
  end

end