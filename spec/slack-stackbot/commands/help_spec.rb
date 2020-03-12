require 'spec_helper'

describe SlackStackbot::Commands::Help do
  def app
    SlackStackbot::Bot.instance
  end
  let (:help_message) {
    'Give me commands by typing _*@Stackbot command [arguments]*_

Here\'s a complete list of my available commands:

*help* Display this help message.
*search* _your search terms_ Search StackOverflow for relevant questions
*fortune* Tell a fortune from the classic UNIX game `fortune`
*hi* Say _"hi"_ to me!
*about* Display links to more details about me.

Example: *@Stackbot search HTML api*'
    }
  it 'help' do
    expect(message: 'stackbot help').to respond_with_slack_message(help_message)
  end
end