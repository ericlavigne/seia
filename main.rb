require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

get '/hello/:world' do |world|
	"Hello #{world}"
end

get '/divide_by_zero' do
	7 / 0
end

