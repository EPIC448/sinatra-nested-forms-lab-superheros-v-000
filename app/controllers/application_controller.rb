require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

 # when user get to our page... Line 8 route fires.
 get '/' do
    erb :super_hero
 end

 post '/teams' do
  @team = Team.new(params[:team])

  params[:hero].each do |info|
  @hero = Hero.new(info)

  binding.pry
end
#you can make
    erb :teams
    # calls the file teams

 end

end
