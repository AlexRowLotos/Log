require  './LoginPage.rb'
require './MainPage.rb'
require './BasePage.rb'
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



  test

  context 'Time log' do

    scenario 'Code writing' do
      login_page.visit('http://185.80.129.43:8080/')
      login_page.login_as('e.dylevsky')
      binding.pry
      main_page.setup_activity(code_writing[:product], code_writing[:project],
                               code_writing[:activity_type], code_writing[:time_spent],
                               code_writing[:comment], code_writing[:log_ticket_link])

      main_page.setup_activity(communication[:product], communication[:project],
                               communication[:activity_type], communication[:time_spent],
                               communication[:comment], communication[:log_ticket_link])

    end
  end
end
