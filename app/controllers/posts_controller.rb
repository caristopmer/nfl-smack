get '/posts' do
  erb :"posts/index"
end

get '/posts/new' do

end

post '/posts' do

end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :"posts/show"
end

delete '/posts/:id' do

end
