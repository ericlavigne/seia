require 'main'

set :logging, true
set :raise_errors, true

log = File.new("log/sinatra.log", File::CREAT | File::APPEND | File::WRONLY)
STDOUT.reopen(log)
STDERR.reopen(log)

run Sinatra::Application

