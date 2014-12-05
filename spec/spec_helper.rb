require 'bundler/setup'
Bundler.setup

require 'active_support'
require 'action_pack'
require 'action_view'
require 'action_controller'
require File.expand_path(File.join(File.dirname(__FILE__), '../lib/neqa_high_charts'))

RSpec.configure do |config|
end
