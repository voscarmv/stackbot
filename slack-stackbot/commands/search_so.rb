require_relative '../../lib/StackOverflow.rb'

module SlackStackbot
  module Commands
    class Search < SlackRubyBot::Commands::Base
      command 'search' do |client, data, _match|
        input = _match[:expression]
        result = StackOverflow::Search.new.questions(input)
        client.say(
          channel: data.channel,
          text: result == '' ?
            'Sorry, no results found. Try different search terms.' :
            "These are some relevant questions from StackOverflow, sorted by rating:\n\n#{result}"
          )
      end
    end
  end
end