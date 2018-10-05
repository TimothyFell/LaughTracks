
class LaughTracksApp < Sinatra::Base

  get '/' do
    erb :"/dashboard"
  end

  get '/comedians' do
    if params[:age] != nil
      @comedians = Comedian.where(age: params[:age])
      @specials = Special.all
      # @specials = Special.by_comedians(@comedians)
    else
      @comedians = Comedian.all
      @specials = Special.all
    end
    erb :"/comedians/index"
  end

  get '/comedians/new' do
    erb :"/comedians/new"
  end

  post '/comedians' do
    comedian = Comedian.create(params[:comedian])
    comedian.save
    redirect "/comedians"
  end

end
