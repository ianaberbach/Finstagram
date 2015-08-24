require "./config/environment"
require "./app/models/post"


class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, "public"
    set :views, "app/views"
  end
    get "/" do
    @posts = Post.all
    puts @posts
    erb :index
  end
  post '/new_post' do
    Post.create({:username => params["username"], :caption => params["post"], :picture => params["picture"]})
    redirect "/"
  end
end