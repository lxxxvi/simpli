require File.join(__dir__, 'lib', 'simpli', 'version')

Gem::Specification.new do |s|
  s.name = 'simpli'
  s.version = Simpli::VERSION
  s.date = '2017-01-29'
  s.summary = 'gem for simplificators'
  s.authors = ['Mario Schüttel']
  s.email = 'mario.schuettel@simplificator.com'
  s.files = %w(
    lib/simpli.rb
    lib/simpli/version.rb
    lib/simpli/script_finder.rb
  )
  s.homepage = 'https://rubygems.org/gems/simpli'
  s.license = 'Apache-2.0'
  s.executables << 'simpli'
end
