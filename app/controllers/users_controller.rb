
get '/users/new' do
  erb :"users/new"
end

post '/users' do
  @user = User.new(params[:user])
  if @user.valid? && params[:user][password] == params[:confirm_password]
    @user.save
    redirect "/"
  else
    @errors = @user.errors.full_messages
    erb :"users/new"
  end
end
