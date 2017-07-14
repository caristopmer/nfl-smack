get '/users/personalize' do
  if request.xhr?
    current_user.favorite_team.color_hex.to_json
  else
    redirect '/'
  end
end

get '/users/new' do
  erb :"users/new"
end

post '/users' do
  @user = User.new(params[:user])
  @user.favorite_team = Team.find_by(name: "#{params[:favorite_team]}") if params[:favorite_team] != "none"
  if @user.valid? && params[:user]["password"] == params[:confirm_password]
    @user.save
    session[:user_id] = @user.id
    redirect "/"
  else
    @errors = @user.errors.full_messages
    if params[:user]["password"] != params[:confirm_password]
      @errors << "Password and confirm password must match."
    end
    erb :"users/new"
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :"users/show"
end
