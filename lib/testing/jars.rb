if RUBY_PLATFORM == "java" then
  module Testing
    module Jars
      require 'java'
      JAR_DIR = ::File.expand_path("../../hadoop-testing-libs", File.dirname( __FILE__) )
      Dir.glob( File.join( JAR_DIR, "*.jar")).each do |jar|
        require jar
      end
    end
  end
else
  warn "WARNING: testing_jars will only work on jruby"
end
