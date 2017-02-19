require 'optparse'

module VagrantPlugins
  module Kleiber
    module Command
      class Root < Vagrant.plugin(2, :command)
        def self.synopsis
          "stars and provisions vagrant environments in symphony"
        end

        def execute
          options = {}

          opts = OptionParser.new do |o|
            o.banner = "Usage: vagrant symphony up [options] <name>"
            o.separator "Starts and provisions vagrant environments included in symphony."

            o.on("-c", "--config", "Set path to config run with") do |v|
              options[:config] = v
            end
          end

          argv = parse_options(opts)


        end
      end
    end
  end
end
