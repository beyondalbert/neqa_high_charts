require File.dirname(__FILE__) + '/spec_helper'

describe "NeqaHighCharts::HighChart" do
  it "should generate HighChart object for high charts" do
    hc_object = NeqaHighCharts::HighChart.new do |h|
      h.chart = {plotShadow: false}
      h.title = {text: "test pie diagram"}
      h.credits = {enabled: true, href: "", text: "example.com"}
      h.tooltip = {pointFormat: "{series.name}:<b>{point.percentage: .1f}%</b>num: {point.y}"}
      h.plotOptions = {pie: {allowPointSelect: true, curor: 'pointer', ditaLabels: {enabled: true, color: '#000', connectorColor: '#000', format: '<b>{point.name}</b>: {point.percentage: .1f}%<br/>num: {point.y}'}}}
      h.series = [{type: 'pie', name: 'percentage', data: [['lily', 1], ['lucy', 2]]}]
    end
    expect(hc_object.series).to eq([{type: 'pie', name: 'percentage', data: [['lily', 1], ['lucy', 2]]}])
  end
end
