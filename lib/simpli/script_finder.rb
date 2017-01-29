module Simpli
  class ScriptFinder
    SIMPLY_SCRIPT_RELATIVE_PATH = 'bin/simply'.freeze

    class << self
      def find(start_dir)
        script_finder = Simpli::ScriptFinder.new
        dir_path = File.expand_path(start_dir || Dir.pwd)
        script_finder.upsearch(dir_path)
      end
    end

    def upsearch(dir_path)
      return if dir_path == '/'
      path_to_simply_script(dir_path) || search_in_parent_directory(dir_path)
    end

    private

    def path_to_simply_script(dir_path)
      Dir.glob("#{dir_path}/#{SIMPLY_SCRIPT_RELATIVE_PATH}").first
    end

    def search_in_parent_directory(dir_path)
      parent_directory = File.expand_path('..', dir_path)
      upsearch(parent_directory)
    end
  end
end
