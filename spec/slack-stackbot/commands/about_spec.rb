require 'spec_helper'

describe SlackStackot::Commands::Default do
  it 'lowercase' do
    expect(message: 'stackbot').to respond_with_slack_message(SlackStackbot::ABOUT)
  end
  it 'capitalized' do
    expect(message: 'Stackbot').to respond_with_slack_message(SlackStackbot::ABOUT)
  end
  it 'with about argument' do
    expect(message: 'Stackbot about').to respond_with_slack_message(SlackStackbot::ABOUT)
  end
end
