require 'simpli/version'
require 'simpli/script_finder'

module Simpli
  class << self
    def locate_simply_script
      Simpli::ScriptFinder.find
    end
  end
end
