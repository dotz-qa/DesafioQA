require 'httparty'
require 'rspec'

AUTH = YAML.load_file(File.dirname(__FILE__) + "/config/auth.yml")
