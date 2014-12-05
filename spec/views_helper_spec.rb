require File.dirname(__FILE__) + '/spec_helper'

describe "NeqaHighCharts::ViewsHepler" do
  include NeqaHighCharts::ViewsHelper
  describe "#high_chart" do
    it "should convert hc object to high charts js" do
      hc_object = NeqaHighCharts::HighChart.new do |h|
        h.chart = {plotShadow: false}
        h.title = {text: "test pie diagram"}
        h.credits = {enabled: true, href: "", text: "example.com"}
        h.tooltip = {pointFormat: "{series.name}:<b>{point.percentage: .1f}%</b>num: {point.y}"}
        h.plotOptions = {pie: {allowPointSelect: true, curor: 'pointer', ditaLabels: {enabled: true, color: '#000', connectorColor: '#000', format: '<b>{point.name}</b>: {point.percentage: .1f}%<br/>num: {point.y}'}}}
        h.series = [{type: 'pie', name: 'percentage', data: [['lily', 1], ['lucy', 2]]}]
      end
      expected_str = %{        <div id=\"hc-div\" style=\"width: 100%;height: 100%;\"></div>
        <script type=\"text/javascript\">
          $(function () {
            $(\"#hc-div\").highcharts({
              chart: {plotShadow: false},
        title: {text: \"test pie diagram\"},
        credits: {enabled: true,href: \"\",text: \"example.com\"},
        tooltip: {pointFormat: \"{series.name}:\\u003cb\\u003e{point.percentage: .1f}%\\u003c/b\\u003enum: {point.y}\"},
        plotOptions: {pie: { allowPointSelect: true,curor: \"pointer\",ditaLabels: { enabled: true,color: \"#000\",connectorColor: \"#000\",format: \"\\u003cb\\u003e{point.name}\\u003c/b\\u003e: {point.percentage: .1f}%\\u003cbr/\\u003enum: {point.y}\" } }},
        series: [{ type: \"pie\",name: \"percentage\",data: [ [ \"lily\",1 ],[ \"lucy\",2 ] ] }],

            });
          });
        </script>
}
      expect(high_chart('hc-div', hc_object, width: "100%")).to eq(expected_str)
    end
  end

  describe "#generate_div_style_from_hash" do
    it "should return div style string from hash" do
      expect(generate_div_style_from_hash({width: "100%", height: "100%"})).to eq("width: 100%;height: 100%;")
    end
  end
end
