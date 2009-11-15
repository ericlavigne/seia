require 'rubygems'
require 'sinatra'
require 'haml'

def log_message(msg)
	e = request.env['sinatra.error']
	puts msg.to_s
end

def log_error(msg,err)
	puts msg.to_s
	puts err.backtrace.join("\r\n")
end

error do
	e = request.env['sinatra.error']
	log_error("Unhandled error",request.env['sinatra.error']
	"Application error"
end

get '/' do
  haml :index
end

get '/divide_by_zero' do
	log_message('About to divide by 0')
	7 / 0
end

