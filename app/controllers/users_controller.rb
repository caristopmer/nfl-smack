
get '/users/new' do
  erb :"users/new"
end

post '/users' do
  @user = User.new(params[:user])
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
