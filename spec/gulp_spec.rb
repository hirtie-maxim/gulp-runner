require 'spec_helper'
require 'gulp-runner/gulp'

describe GulpRunner::Gulp do
	let (:gulp) { GulpRunner::Gulp }
	before(:each) do 
		GulpRunner.root_path = "#{Dir.pwd}/spec/fixtures"
		GulpRunner.gulp_file_path = File.join("spec", "fixtures", "gulpfile.js")
		GulpRunner.node_modules_path = File.join("spec", "fixtures")
	end

	describe 'list' do
		it 'returns list of gulp tasks' do
			out = gulp.list
			expect(out).to include "default", "build"
		end
	end

	describe 'task runner' do
		it 'runs default task' do
			expect(gulp.run).to include "Finished 'default'"
		end

		it 'runs build task' do
			expect(gulp.run("build")).to include "Finished 'build'"
		end
	end
end