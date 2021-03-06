module NeqaHighCharts
  class HighChart
  	attr_accessor :chart, :colors, :credits, :drilldown, :exporting, :labels, :legend, :loading, :navigation, :noData, :pane, :plotOptions, :series, :subtitle, :title, :tooltip, :xAxis, :yAxis, :scrollbar

  	def initialize
  	  self.tap do |high_chart|
  	  	# high_chart.defaults_options
  	  	yield high_chart if block_given?
  	  end
  	end

  	def defaults_options
  	  self.title = {text: nil}
  	  self.legend = {layout: "vertical", labels: {}}
  	  self.xAxis = {}
  	  self.yAxis = {title: {text: nil}, labels: {}}
  	  self.tooltip = {enabled: true}
  	  self.subtitle = {}
  	end
  end
end
