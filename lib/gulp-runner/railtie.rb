module GulpRunner
	class Railtie < Rails::Railtie
		rake_tasks do
			"tasks/gulp.rake"
		end
	end
end