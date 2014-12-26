require 'spec_helper'
require 'gulprunner/command_utils'

describe GulpRunner::CommandUtils do
	let (:utils) { GulpRunner::CommandUtils }
	describe 'find_command' do
		it 'returns nil for unexistent command' do
			expect(utils.find_command('testing-command')).to be_nil
		end
	end

	describe 'get_command' do
		it 'raises exception for unexistent command' do
			expect { utils.get_command('testing-command') }.to raise_error
		end

		it 'do not raises exception if command found' do
			expect(utils).to receive(:find_command).and_return(true)
			expect { utils.get_command('testing-command') }.to_not raise_error
		end
	end
end