require 'spec_helper'
require 'rake'

describe 'gulp runner rake test' do
	before :each do
		GulpRunner.root_path = "#{Dir.pwd}/spec/fixtures"
		GulpRunner.gulp_file_path = File.join("spec", "fixtures", "gulpfile.js")
		GulpRunner.node_modules_path = File.join("spec", "fixtures")
		load File.expand_path("lib/tasks/gulp.rake")
	end

	describe 'gulp:list' do
		it 'calls GulpRunner::Gulp.list method' do
			Rake::Task["gulp:list"].invoke
		end
	end

	describe 'gulp:run' do
		before :each do
			allow(GulpRunner::Gulp).to receive(:run)
		end

		it 'calls GulpRunner::Gulp.run method with build param' do
			Rake::Task["gulp:run"].invoke("build")
			expect(GulpRunner::Gulp).to have_received(:run).with('build').at_least(1).times
		end
	end
end