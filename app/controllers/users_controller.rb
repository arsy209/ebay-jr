#User register

get '/users/new' do
  erb :'users/new'
end


post '/users' do
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect '/'
    else
      @errors = @user.errors.full_messages
      erb :'users/new'
    end
end

get '/users' do
  @users = User.all
  erb :'users/index'
end

get '/users/:id' do
  redirect_login
  @user = User.find(params[:id])
  if logged_in? && @user != current_user
    view_count = @user.view_count
    view_count += 1
    @user.update_attribute(:view_count, view_count)
  end
  erb :'users/show'
end

get '/users/:id/edit' do
  @user = User.find(params[:id])
  if current_user.id == @user.id
    erb :'users/edit'
  else
    redirect "/users/#{@user.id}"
  end
end

put '/users/:id' do
  @user = User.find(params[:id])
  @user.assign_attributes(params[:user])
  if @user.save
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    @user = User.find(params[:id])
    erb :'users/edit'
  end
end

