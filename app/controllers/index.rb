get '/' do
  @items = Item.all
  erb :index
end
