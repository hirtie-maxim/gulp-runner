module GulpRunner
	class Railtie < Rails::Railtie
		rake_tasks do
			load "tasks/gulp.rake"
		end
	end
end