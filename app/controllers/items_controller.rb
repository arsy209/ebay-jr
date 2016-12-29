get '/items/new' do
  redirect_login
  erb :'items/new'
end

post '/items' do
  @item = current_user.items_to_sell.new(params[:item])
   if @item.save
    redirect "/users/#{current_user.id}"
  else
    @errors = @item.errors.full_messages
    erb :'items/new'
  end
end

get '/items/:id' do
  redirect_login
  @item = Item.find(params[:id])
  erb :'items/show'
end

get '/items/:id/edit' do
  redirect_login
  @item = Item.find(params[:id])
  if current_user.id == @item.seller.id
    erb :'items/edit'
  else
      redirect "/users/#{@item.seller.id}"

  end

end

put '/items/:id' do
  @item = Item.find(params[:id])
  @item.assign_attributes(params[:item])
  if @item.save
    redirect "/users/#{@item.seller.id}"
  else
    @errors = @item.errors.full_messages
    @item = Item.find(params[:id])
    erb :'items/edit'
  end
end

delete '/items/:id' do
  @item = Item.find(params[:id])
  if current_user.id == @item.seller.id
  @item.destroy
  redirect "/users/#{@item.seller.id}"
else
  redirect "/users/#{@item.seller.id}"
end
end