require './BasePage.rb'

class MainPage < BasePage 

	element :add_activity_button, :xpath, ".//*[@id='activityAddBtn']"
  element :submit_button, :xpath, "//body/div/button[@id='edit']"
	element :save_add_button, '#submitModal_Add'
	element :logout_link, :xpath, "//a[text()='Logout']"
	element :product_dropdown, "[data-id=selectIdProject]"
	element :project_dropdown, :xpath, "//div[@id='fields_of_project_id_Server']//*[@data-id='select_Project']"
	element :activity_dropdown, :xpath, "//div[@id='fields_of_project_id_Server']//*[@data-id='select_Activity']"
	element :time_spent_input, :xpath, "//div[@id='fields_of_project_id_Server']//*[@id='input_Time spent']"
	element :comment_textarea, :xpath, "//div[@id='fields_of_project_id_Server']//*[@id='textarea_Comment']"

	element :link_to_jira_input, :xpath, "//div[@id='fields_of_project_id_Server']//*[@id='input_A1QA JIRA Task Key']"

	def click_logout_link
	 	logout_link.click
	end

	def logout
		click_logout_link
	end

	def submit_selected_activities
	  click_submit_button
	end
	
	def select_product(product)
		product_dropdown.find(:xpath,'..').find(:xpath, ".//option[contains(text(),'#{product}')]").select_option
	end

	def select_project(project)
		project_dropdown.find(:xpath,'..').find(:xpath, ".//option[contains(text(),'#{project}')]").select_option
	end

	def select_actiity(activity_type)
		activity_dropdown.find(:xpath,'..').find(:xpath, ".//option[contains(text(),'#{activity_type}')]").select_option
	end

	def	set_time(time_spent)
		time_spent_input.set(time_spent)
	end

	def set_comment(comment)
		comment_textarea.set(comment)
	end

	def set_link(log_ticket_link)
		link_to_jira_input.set(log_ticket_link)
	end

	def setup_activity(product, project, activity_type, time_spent, comment, log_ticket_link)
		click_add_activity
		select_product(product)
		select_project(project)
		select_actiity(activity_type)
		set_time(time_spent)
		set_comment(comment)
		set_link(log_ticket_link)
		click_button_add_save
	end

	def click_button_add_save
		save_add_button.click
	end

	def click_add_activity
		click_button_add_activity
	end

	def click_button_add_activity
		add_activity_button.click
	end
	
	def click_submit_button
    submit_button.click
	end
end
