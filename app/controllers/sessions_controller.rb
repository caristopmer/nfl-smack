
get '/sessions/new' do
  erb :"sessions/new"
end

post '/sessions' do
  @user = User.find_by(username: params[:username])
  if @user && @user.password == params[:password]
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = ["Incorrect login credentials."]
    erb :"sessions/new"
  end
end

delete '/sessions' do
  session[:user_id] = nil
  redirect '/'
end
