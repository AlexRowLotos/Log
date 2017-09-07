require_relative './BasePage.rb'

class JiraUploadPage < BasePage
  
  element :upload_field, '#time-import-file'
  element :submit_button, :xpath, "//button[text()='Submit']"
  element :login_field, '#login-form-username'
  element :password_field, '#login-form-password'
 # element :login_button, '#login-form-submit'
  
  def delete_file
    File.delete(Dir["/home/alexrow/Загрузки/*#{Date.today.strftime('%d-%m-%Y')}*"].first)
  end
  
  def upload_file
    upload_field.set(Dir["/home/alexrow/Загрузки/*#{Date.today.strftime('%d-%m-%Y')}*"].first.to_s)
  end

  def submit_time
    click_submit_button
  end
  
  def click_submit_button
    submit_button.click
  end
  
  def login_as_user(username,password)
    set_username(username)
    set_password(password)
  end
    
  def set_username(username)
    login_field.set(username)
  end
  
  def set_password(password)
    password_field.set(password)
  end
=begin 
  def click_login_button
    login_button.click
  end
=end
end