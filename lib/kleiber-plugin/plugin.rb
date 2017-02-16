begin
  require 'vagrant'
rescue LoadError
  raise 'Kleiber must be run within Vagrant.'
end

module VagrantPlugins
  module Kleiber
    class Plugin < Vagrant.plugin('2')
      name 'Kleiber'
      description <<-DESC
      Plugin provides super simple way to vagrant orchestration.
      DESC

      command :symphony do
        require_relative 'command/symphony'
        Command::Symphony
      end
    end
  end
end
