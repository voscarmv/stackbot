#!/usr/bin/env ruby
require_relative 'lib/StackOverflow.rb'
require_relative 'lib/Fortune.rb'
puts 'Hello, World!'
puts StackOverflow::Search.new.questions("html api")
UnixFortunes::Fortune.new.give_fortune