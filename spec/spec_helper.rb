# Required by shoulda
#
#  * Create Rails environment based on the version given from Appraisal
TESTAPP_ROOT = File.join(File.dirname(__FILE__), '..', 'tmp', 'aruba', 'testapp')
FileUtils.rm_rf(TESTAPP_ROOT) if File.exists?(TESTAPP_ROOT)
`rails new #{TESTAPP_ROOT}`
ENV['RAILS_ENV'] = 'test'
ENV['BUNDLE_GEMFILE'] ||= TESTAPP_ROOT + '/Gemfile'
require "#{TESTAPP_ROOT}/config/environment"

# Main requirements
require 'shoulda-matchers'
require 'rspec/rails'

# Models to test
class ClassWithCallbacks < ActiveRecord::Base
  ActiveRecord::Base::CALLBACKS.each do |callback_name|
    send callback_name, :method_to_call
  end
end

class ClassWithoutCallbacks < ActiveRecord::Base
end

class ClassWithoutAfterCreateCalbacks < ActiveRecord::Base
  after_create :foo_bar
  after_update :somethig_else
end

