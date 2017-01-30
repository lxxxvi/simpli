require 'simpli/version'
require 'simpli/script_finder'

module Simpli
  class << self
    def locate_script(script_name, start_dir = Dir.pwd)
      script_finder = Simpli::ScriptFinder.new(script_name)
      dir_path = File.expand_path(start_dir)
      script_finder.upsearch(dir_path)
    end
  end
end
