#!/usr/bin/env ruby
require_relative 'lib/StackOverflow.rb'
puts 'Hello, World!'
puts StackOverflow::Command.new.run("html api")