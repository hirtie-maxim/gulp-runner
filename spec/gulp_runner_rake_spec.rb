require 'spec_helper'
require 'rake'

describe 'gulp runner rake test' do
	let (:gulp) { GulpRunner::Gulp }
	before do
		GulpRunner.root_path = "#{Dir.pwd}/spec/fixtures"
		GulpRunner.gulp_file_path = File.join("spec", "fixtures", "gulpfile.js")
		GulpRunner.node_modules_path = File.join("spec", "fixtures")
		load File.expand_path("lib/tasks/gulp.rake")
	end

	describe 'gulp:list' do
		it 'calls GulpRunner::Gulp.list method' do
			gulp_spy = object_spy(gulp)
			Rake::Task["gulp:list"].invoke
		end
	end

	describe 'gulp:run' do
		it 'calls GulpRunner::Gulp.run method with default param' do
			allow(GulpRunner::Gulp).to receive(:run)
			Rake::Task["gulp:run:default"].invoke
			expect(GulpRunner::Gulp).to have_received(:run).at_least(1).times
		end

		it 'calls GulpRunner::Gulp.run method with build param' do
			allow(GulpRunner::Gulp).to receive(:run)
			Rake::Task["gulp:run:build"].invoke
			expect(GulpRunner::Gulp).to have_received(:run).with('build').at_least(1).times
		end
	end
end