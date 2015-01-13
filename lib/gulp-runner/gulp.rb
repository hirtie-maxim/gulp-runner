module GulpRunner
	class Gulp
		def self.list
      `#{gulp} --cwd #{cwd} --tasks`
		end

		def self.run(task_name = "default")
			`#{gulp} --cwd #{cwd} #{task_name}`
		end

		private
		def self.gulp_file_path
			GulpRunner.gulp_file_path
		end

		def self.cwd
			GulpRunner.node_modules_path
		end

		def self.gulp
			begin
        gulp = CommandUtils.get_command('gulp')
      rescue
        $stderr.puts ["Gulp.js not found! You can install Gulp.js using Node and npm:",
        "$ npm install gulp -g",
        "For more info see http://gulpjs.com/"].join("\n")
      end
		end
	end
end