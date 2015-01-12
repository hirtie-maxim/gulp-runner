# desc "Explaining what the task does"
# task :gulprunner do
#   # Task goes here
# end

namespace :gulp do
	desc 'List all gulp tasks'
	task :list do
		GulpRunner::Gulp.list
	end

	namespace :run do
		task :default do
			GulpRunner::Gulp.run
		end

		task :build do
			GulpRunner::Gulp.run "build"
		end
	end
end