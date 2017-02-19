module VagrantPlugins
  module Kleiber
    module Command
      class Root < Vagrant.plugin(2, :command)
        def self.synopsis
          "manages symphonies"
        end

        def initialize(argv, env)
          super

          @main_args, @sub_command, @sub_args = split_main_and_subcommand(argv)

          @subcommands = Vagrant::Registry.new

          @subcommands.register(:up) do
            require_relative "up"
            Up
          end
        end

        def execute
          0
        end
      end
    end
  end
end
