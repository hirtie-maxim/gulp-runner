module GulpRunner
  class CommandUtils
    def self.get_command(command_name)
      entries = Dir.entries(GulpRunner.options[:root_path])
      npm_path = File.join(GulpRunner.options[:root_path], 'node_modules', '.bin')
      command = CommandUtils.find_command(command_name, [npm_path])

      return command if !command.nil?
      raise Exception
    end
    # http://stackoverflow.com/questions/2108727/which-in-ruby-checking-if-program-exists-in-path-from-ruby
    def self.find_command(cmd, paths = [])
      exts = ENV['PATHEXT'] ? ENV['PATHEXT'].split(';') : ['']
      paths += ENV['PATH'].split(File::PATH_SEPARATOR)
      paths.each do |path|
        exts.each do |ext|
          exe = File.join(path, "#{cmd}#{ext}")
          return exe if (File.executable?(exe) && File.file?(exe))
        end
      end
      nil
    end
  end
end