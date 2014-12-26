require 'gulp-runner/railtie'
require 'fileutils'

module GulpRunner
	def self.options
		@options ||= {
			:path => File.join('gulpfile.js'),
			:root_path => Dir.pwd
		}
	end
end
