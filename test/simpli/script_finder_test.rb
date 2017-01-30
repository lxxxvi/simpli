require 'test_helper'

module Simpli
  class ScriptFinderTest < Minitest::Test
    TEST_DIR = File.expand_path("#{File.dirname(__FILE__)}/..")
    TEST_PROJECTS_DIR = "#{TEST_DIR}/projects".freeze
    ALPHA_PROJECT_DIR = "#{TEST_PROJECTS_DIR}/alpha".freeze
    BRAVO_PROJECT_DIR = "#{TEST_PROJECTS_DIR}/bravo".freeze

    SIMPLY_PATH_IN_ALPHA = "#{ALPHA_PROJECT_DIR}/bin/simply.sh'".freeze

    def test_alpha_project_base_directory
      assert_equal SIMPLY_PATH_IN_ALPHA, Simpli::locate_script('bin/simply.sh', ALPHA_PROJECT_DIR)
    end

    def test_alpha_project_inner_directory
      assert_equal SIMPLY_PATH_IN_ALPHA, Simpli::locate_script('bin/simply.sh', "#{ALPHA_PROJECT_DIR}/some/other/directory")
    end

    def test_bravo_project_base_directory
      assert_nil Simpli::locate_script('bin/simply.sh', BRAVO_PROJECT_DIR)
    end

    def test_bravo_project_inner_directory
      assert_nil Simpli::locate_script('bin/simply.sh', "#{BRAVO_PROJECT_DIR}/some/other/directory")
    end
  end
end
