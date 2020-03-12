require_relative '../../lib/stackoverflow.rb'

module SlackStackbot
  module Commands
    class Search < SlackRubyBot::Commands::Base
      command 'search'
      def self.call(client, data, match)
        if match.names.include?('expression')
          input = match[:expression]
          if input.nil?
            client.say(channel: data.channel, text: 'Search for what?')
          else
            result = StackOverflow::Search.new.questions(input)
            client.say(channel: data.channel, text: result)
          end
        end
      rescue StandardError => e
        client.say(channel: data.channel, text: "Sorry, #{e.message}.")
      end
    end
  end
end
