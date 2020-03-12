require 'spec_helper'

describe SlackStackbot::Commands::Search do
  def app
    SlackStackbot::Bot.instance
  end
  let(:some_results) do
    StackOverflow::Search.new.questions('HTML api')
  end
  let(:no_results) do
    StackOverflow::Search.new.questions('sakdjaskldjhsdawe3')
  end
  it 'StackOverflow search returns some results' do
    expect(message: 'stackbot search HTML api').to respond_with_slack_message(some_results)
  end
  it 'StackOverflow search returns no results' do
    expect(message: 'stackbot search sakdjaskldjhsdawe3').to respond_with_slack_message(no_results)
  end
  it 'Search terms missing' do
    expect(message: 'stackbot search').to respond_with_slack_message('Search for what?')
  end
end
