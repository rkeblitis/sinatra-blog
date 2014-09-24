require 'sinatra'

class MyApp < Sinatra::Base

  get "/"  do # makes a place you can go to in the internet
    erb :index #erb basiclay and html file
  end

  get "/about-me" do
    "I'm Polly"
  end

end
