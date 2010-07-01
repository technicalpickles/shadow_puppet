require 'rubygems'
require 'ruby-debug'

require 'isolate/scenarios/now'

require 'spec'
require 'spec/autorun'

$LOAD_PATH.unshift Pathname.new(__FILE__).dirname.dirname + 'lib'
  
require 'shadow_puppet'
require 'shadow_puppet/test'
Dir.glob(File.join(File.dirname(__FILE__), 'fixtures', '*.rb')).each do |manifest|
  require manifest
end
