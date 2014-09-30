require 'sinatra'
require './lib/postclass'

class BlogApp < Sinatra::Base

  before do #<----- this is how you make it avaible to the layout
    @posts = PostClass.all
  end

  get "/"  do # makes a place you can go to in the internet
    #@posts = PostClass.all # <---call as much ruby as you can in here vs view files
    erb :index #erb basiclay and html file

  end

  get "/about-me" do
    erb :about_me
  end

  get "/posts/:post_name" do
    erb "posts/#{params[:post_name]}".to_sym

  end

  post "/" do
    put params.inspect
    # Add input into database
    redirect to("/")
  end

end
