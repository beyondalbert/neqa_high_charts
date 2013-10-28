require "neqa_high_charts/version"
require "neqa_high_charts/high_chart"
require "neqa_high_charts/views_helper"
if defined?(::Rails::Railtie)
  require File.join(File.dirname(__FILE__), *%w[neqa_high_charts railtie])
  require File.join(File.dirname(__FILE__), *%w[neqa_high_charts engine]) if ::Rails.version.to_s >= '3.1'
end

module NeqaHighCharts
end
