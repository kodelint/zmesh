Dir[File.join(File.dirname(__FILE__),"lib/**/lib")].each {|dir| $LOAD_PATH << dir}
require 'git-style-binary/command'

$ohmy_yadr = File.join(ENV['HOME'], ".ohmy_yadr")
