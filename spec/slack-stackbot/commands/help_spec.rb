require 'spec_helper'

describe SlackStackbot::Commands::Help do
  def app
    SlackStackbot::App.new
  end
  let (:help_message) {
    'Give me commands by typing _*@Stackbot command [arguments]*_

Here\'s a complete list of my available commands:

*help* Displays this help message.
*about* Displays links to more details about me.
*search* _your search terms_ Searches StackOverflow for relevant questions
*fortune* Tells a fortune from the classic UNIX game `fortune`

Example: *@Stackbot search HTML api*'
    }
  it 'help' do
    expect(message: 'stackbot help').to respond_with_slack_message(help_message)
  end
end