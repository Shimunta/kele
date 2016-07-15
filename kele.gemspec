Gem::Specification.new do |s|
  s.name = 'kele'
  s.version = '0.0.4'
  s.date = '2016-07-09'
  s.summary = 'Kele API Client'
  s.description = 'A client for the Bloc API'
  s.authors = ['Daniel Lisa']
  s.email = 'danlisa89@gmail.com'
  s.files = ["lib/kele.rb", "lib/roadmap.rb"]
  s.require_paths = ["lib"]
  s.homepage = 'http://rubygems.org/gems/kele'
  s.license = 'MIT'
  s.add_runtime_dependency 'httparty', '~> 0.13'
end
