require './BasePage.rb'

class LoginPage < BasePage 

  element :login_field, '#inputEmail'
  element :button_login, :xpath, "//button[text()='Login']"

	def click_button_login
		button_login.click
	end	

	def set_user_as(username)
		login_field.set(username)
	end

	def login_as(username)
		set_user_as(username)
		click_button_login
	end

end
