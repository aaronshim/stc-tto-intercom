require 'sinatra'
require 'shellwords'

get '/' do
  erb :index
end

get '/say/*' do |phrase|
  # must avoid injection attacks but other than that it's good to go
  `say #{phrase.shellescape}`
end

get '/transfer' do
  `say "do a transfer"`
end


