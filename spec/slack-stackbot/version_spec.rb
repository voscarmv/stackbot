require_relative '../spec_helper'

describe SlackStackbot do
  it 'has a version' do
    expect(SlackStackbot::VERSION).to_not be nil
  end
end
