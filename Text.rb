require './LoginPage.rb'
require './MainPage.rb'
require './BasePage.rb'
require './SubmitPage.rb'
require './JiraUploadPage.rb'
require 'io/console'

require 'pry-byebug'

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
  config.ignore_hidden_elements = false
  #config.app_host = 'http://185.80.129.43:8080' # change url
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end


feature 'test' do
  let(:code_writing) do {
    project: 'Trinity',
    product: 'Server',
    activity_type: 'Code writing',
    time_spent: '7h',
    comment: '- in progress. Working on',
    log_ticket_link: 'MADNESSQAHVA-11'

  }
end

  let(:communication) do {
    project: 'Trinity',
    product: 'Server',
    activity_type: 'Communication',
    time_spent: '1h',
    comment: 'Project work communication',
    log_ticket_link: 'MADNESSQAHVA-9'

  }
  end

  let(:main_page) { MainPage.new }
  let(:login_page) { LoginPage.new }
  let(:submit_page) {SubmitPage.new}
  let(:jira_upload_page) {JiraUploadPage.new}


  context 'Time log' do
    before(:all) do
      print 'Please type comment, sir:'
             @comment =  STDIN.gets
      print 'Please type username, sir:'
             @username =  STDIN.gets
      print 'Please type password, sir:'
             @password =  STDIN.noecho(&:gets)
    end
  
  
    scenario 'Code writing' do
      login_page.visit('http://185.80.129.43:8080/')
      login_page.login_as('e.dylevsky')
       
      main_page.setup_activity(code_writing[:product], code_writing[:project],
                               code_writing[:activity_type], '1m',
                               @comment, 'test')
      sleep(2)
      main_page.submit_selected_activities
      sleep(2)
      submit_page.download_xls_file
    end
    
    scenario 'Download and submit file' do
      jira_upload_page.visit('https://jira.a1qa.com/secure/WorkLogImportHandler.jspa')
      jira_upload_page.login_as_user(@username, @password)
      sleep(2)
      jira_upload_page.upload_file
      jira_upload_page.submit_time
      sleep(5)
      jira_upload_page.delete_file
    end
  end
end
