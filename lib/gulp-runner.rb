require 'gulp-runner/railtie' if defined?(Rails)
require 'fileutils'

module GulpRunner
	class << self
		attr_accessor :gulp_file_path, :root_path, :node_modules_path
	end

	@gulp_file_path = File.join('gulpfile.js')
	@node_modules_path = ''
	@root_path = Dir.pwd
end
