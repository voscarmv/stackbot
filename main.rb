#!/usr/bin/env ruby
require_relative 'lib/StackOverflow.rb'
require_relative 'lib/Fortune.rb'
#puts StackOverflow::Search.new.questions("html api")
fortune = UnixFortunes::Fortune.new.give_fortune

fortune = 'For there are moments when one can neither think nor feel.  And if one can
neither think nor feel, she thought, where is one?
		-- Virginia Woolf, "To the Lighthouse"

	[Quoted in "VMS Internals and Data Structures", V4.4, when
   referring to powerfail recovery.]'
   
  #  puts fortune
  #  puts Regexp.quote(fortune)
  #  puts fortune =~ /Regexp.quote(fortune)/m
  if fortune =~ /Regexp.quote(fortune)/m
      puts "FOUND!!!"
   end

myfile = File.open('lib/fortunes')
# contents = Regexp.quote(myfile.read)

# # puts contents

# if contents.include?(fortune)
#   puts "FOUNDIT!"
# end

file = 'hello
world
how
are
you?'

file = myfile.read
findthis = UnixFortunes::Fortune.new.give_fortune

# findthis = 'Nas'
puts findthis

if file =~ /#{Regexp.quote(findthis)}/m then
  puts "Found it!"
end

# puts File.open('lib/fortunes').grep(Regexp.new(Regexp.quote(fortune), Regexp::MULTILINE | Regexp::EXTENDED))