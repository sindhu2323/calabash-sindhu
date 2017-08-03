



require "Capybara"
require "Capybara/cucumber"
require "rspec"
require 'capybara/poltergeist'

require 'win32ole'

 Capybara.default_selector = :xpath
Capybara.default_driver = :poltergeist
#Capybara.default_wait_time = 30
Capybara.register_driver :poltergeist do |app|
    options = {
        :js_errors => false,
        :timeout => 120,
        :debug => false,
:phantomjs_options => [ '--load-images=true', '--ignore-ssl-errors=yes', '--ssl-protocol=TLSv1'],       
	   :inspector => false,
    }
    Capybara::Poltergeist::Driver.new(app, options)
end
