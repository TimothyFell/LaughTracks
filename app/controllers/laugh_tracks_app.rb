
class LaughTracksApp < Sinatra::Base

  get '/' do
    @title = "Tim's Comedians"
    erb :"/dashboard"
  end

  get '/comedians' do
    @comedians = Comedian.find_comedians(params)
    @specials = Special.by_comedians(@comedians)
    @title = "All Comedians | Tim's Comedians"
    erb :"/comedians/index"
  end

  get '/comedians/new' do
    @title = "Create New Comedian | Tim's Comedians"
    erb :"/comedians/new"
  end

  post '/comedians' do
    comedian = Comedian.create(params[:comedian])
    comedian.save
    redirect "/comedians"
  end

  get '/comedians/:id' do
    @comedians = Comedian.find(params[:id])
    erb :'/comedians/show'
  end

end
