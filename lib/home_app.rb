require 'sinatra'
class HomeApp < Sinatra::Base
  get "/" do
    "Hello from sinatra"
  end
end