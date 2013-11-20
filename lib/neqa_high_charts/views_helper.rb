module NeqaHighCharts
  module ViewsHelper
  	def high_chart(div_id, object, div_html_options)
      div_html_options = {width: 600, height: 300}.merge(div_html_options)
  	  div_style = "width: #{div_html_options[:width]}px; height: #{div_html_options[:height]}px"
  	  div_el =<<-DIV
  	  	<div id="#{div_id}" style="#{div_style}"></div>
  	  DIV
  	  graph =<<-HCJS
  	  	<script type="text/javascript">
  	  	  $(function () {
  	  	  	$("##{div_id}").highcharts({
  	  	  	  #{option_generate(object)}
  	  	  	});
  	  	  });
  	  	</script>
  	  HCJS

  	  div_el + graph
  	end

  	def option_generate(object)
  	  options = ''
  	  object.instance_variables.each do |v|
  	  	v_name = v.to_s.delete("@")
  	  	v_value = object.instance_variable_get(v)
  	  	if v_value.is_a? Hash
  	  	  j_value = '{' + generate_json_from_hash(v_value) + '}'
        else
          j_value = '[' + generate_json_from_array(v_value) + ']'
  	  	end
  	  	option =<<-OPTION
  	  	  #{v_name}: #{j_value},
  	  	OPTION
  	  	options += option
  	  end
  	  options
  	end

  	private

    def generate_json_from_hash hash
      hash.each_pair.map do |key, value|
        k = key.to_s.camelize.gsub!(/\b\w/) { $&.downcase }
        %|#{k}: #{generate_json_from_value value}|
      end.flatten.join(',')
    end

    def generate_json_from_value value
      if value.is_a? Hash
        %|{ #{generate_json_from_hash value} }|
      elsif value.is_a? Array
        %|[ #{generate_json_from_array value} ]|
      elsif value.is_a?(String) && (value.include?('function()') || value.include?('Highcharts.'))
        value
      else
        value.to_json
      end
    end

    def generate_json_from_array array
      array.map { |value| generate_json_from_value(value) }.join(",")
    end
  end
end

ActionView::Base.send :include, NeqaHighCharts::ViewsHelper
