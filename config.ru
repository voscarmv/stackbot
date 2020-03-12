$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require 'slack_stackbot'
require 'web'

Thread.abort_on_exception = true

Thread.new do
  begin
    SlackStackbot::Bot.run
  rescue Exception => e
    warn "ERROR: #{e}"
    warn e.backtrace
    raise e
  end
end

run SlackStackbot::Web
