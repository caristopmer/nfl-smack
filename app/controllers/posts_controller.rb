get '/posts' do
  erb :"posts/index"
end

get '/posts/new' do
  erb :"posts/new"
end

post '/posts' do
  redirect '/' if !logged_in?
  @post = Post.new(params[:post])
  @post.author = current_user
  if @post.save
    if request.xhr?
      erb :"posts/_show", layout: false, locals: {post: @post}
    else
      redirect "/posts/#{@post.id}"
    end
  else
    if request.xhr?
      status 422
      "Post content invalid."
    else
      @errors = @post.errors.full_messages
      erb :"posts/new"
    end
  end
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :"posts/show"
end

# delete '/posts/:id' do
#  "delete post"
# end
