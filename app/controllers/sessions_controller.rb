
get '/sessions/new' do
  erb :"sessions/new"
end

post '/sessions' do
  "user login"
end

delete '/sessions' do
  session[:user_id] = nil if current_user.id == session[:user_id]
  redirect '/'
end
