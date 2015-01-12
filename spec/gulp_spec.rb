require 'spec_helper'
require 'gulp-runner/gulp'

describe GulpRunner::Gulp do
	before(:each) do 
		GulpRunner.root_path = "#{Dir.pwd}/spec/fixtures"
		GulpRunner.gulp_file_path = File.join("spec", "fixtures", "gulpfile.js")
		GulpRunner.node_modules_path = File.join("spec", "fixtures")
	end

	describe '.list' do
		it 'returns list of gulp tasks' do
			expect(GulpRunner::Gulp.list).to include "default", "build"
		end
	end

	describe '.run' do
		it 'runs default task' do
			expect(GulpRunner::Gulp.run).to include "Finished 'default'"
		end

		it 'runs build task' do
			expect(GulpRunner::Gulp.run("build")).to include "Finished 'build'"
		end
	end
end