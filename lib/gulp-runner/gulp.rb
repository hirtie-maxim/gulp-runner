module GulpRunner
	class Gulp
		def self.list
      begin
        gulp = CommandUtils.get_command('gulp')
      rescue
        $stderr.puts ["Bower not found! You can install Bower using Node and npm:",
        "$ npm install gulp -g",
        "For more info see http://gulpjs.com/"].join("\n")
      end
		end

		private
		def self.path
			GulpRunner.options[:path]
		end
	end
end