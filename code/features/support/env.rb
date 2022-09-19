require 'httparty'
require 'rspec'

CITY = YAML.load_file(File.dirname(__FILE__) + "/data.yml")
AUTHENTICATION = YAML.load_file(File.dirname(__FILE__) + "/authentication.yml")