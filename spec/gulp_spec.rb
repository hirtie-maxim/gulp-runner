require 'spec_helper'
require 'gulprunner/gulp'

describe GulpRunner::Gulp do
	let (:gulp) { GulpRunner::Gulp }
	before(:each) do 
		GulpRunner.root_path = "#{Dir.pwd}/spec/fixtures"
	end

	it 'returns list of gulp tasks' do
		expect(gulp.list).not_to be_empty
	end
end