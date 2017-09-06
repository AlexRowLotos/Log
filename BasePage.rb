require 'site_prism'
require 'site_prism'
require 'capybara/rspec'
require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'


class BasePage < SitePrism::Page

  def select_optione(css_selector, value)
    find(:css, css_selector).find(:option, value).select_option
  end

 def unselect_optione(css_selector, value)
    find(:css, css_selector).find(:option, value).unselect_option
  end
end