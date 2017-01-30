module Simpli
  class ScriptFinder
    def initialize(relative_script_path)
      @relative_script_path
    end

    def upsearch(dir_path)
      return if dir_path == '/'
      path_to_simply_script(dir_path) || search_in_parent_directory(dir_path)
    end

    private

    def path_to_simply_script(dir_path)
      Dir.glob("#{dir_path}/#{@relative_script_path}").first
    end

    def search_in_parent_directory(dir_path)
      parent_directory = File.expand_path('..', dir_path)
      upsearch(parent_directory)
    end
  end
end
