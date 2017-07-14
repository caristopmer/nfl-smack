get '/posts/:id/replies/new' do
  @post = Post.find(params[:id])
  erb :"replies/new"
end

post '/posts/:id/replies' do
  redirect '/' if !logged_in?
  @reply = Reply.new(params[:reply])
  @reply.post = Post.find(params[:id])
  @reply.author = current_user
  if @reply.save
    if request.xhr?
      erb :"replies/_show", layout: false, locals: {reply: @reply}
    else
      redirect "/posts/#{params[:id]}"
    end
  else
    if request.xhr?
      status 422
      "Reply must have content!"
    else
      @errors = @reply.errors.full_messages
      erb :"replies/new"
    end
  end
end
