# -*- encoding: utf-8 -*-
# stub: neqa_high_charts 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "neqa_high_charts"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["beyondalbert"]
  s.date = "2014-12-03"
  s.description = "easy high chart generate gem"
  s.email = ["beyondalbert@gmail.com"]
  s.files = [".gitignore", "Gemfile", "LICENSE.txt", "README.md", "Rakefile", "lib/neqa_high_charts.rb", "lib/neqa_high_charts/engine.rb", "lib/neqa_high_charts/high_chart.rb", "lib/neqa_high_charts/railtie.rb", "lib/neqa_high_charts/version.rb", "lib/neqa_high_charts/views_helper.rb", "neqa_high_charts.gemspec"]
  s.homepage = ""
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "easy high chart generate gem"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
  s.add_development_dependency "rspec"
end
