require './BasePage.rb'

class SubmitPage < BasePage
  
  element :download_xls_button, :xpath, "//button[contains(text(),'Download .xls')]"
  
  def download_xls_file
    click_dowload_xls_button
  end
  
  def click_dowload_xls_button
    download_xls_button.click
  end
      
end