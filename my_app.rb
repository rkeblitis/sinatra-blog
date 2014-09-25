require 'sinatra'

class MyApp < Sinatra::Base

  get "/"  do # makes a place you can go to in the internet
    erb :index #erb basiclay and html file
  end

  get "/about-me" do
    erb :about_me
  end

  get "/post/:post_name" do
    erb params[:post_name].to_sym

  end

end
