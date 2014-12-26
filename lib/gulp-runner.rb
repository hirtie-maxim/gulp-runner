require 'gulprunner/railtie' if defined?(Rails)
require 'fileutils'

module GulpRunner
	class << self
		attr_accessor :path, :root_path
	end

	@path = File.join('gulpfile.js')
	@root_path = Dir.pwd
end
