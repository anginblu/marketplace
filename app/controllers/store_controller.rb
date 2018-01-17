class StoreController < ApplicationController

  get "/stores" do
    redirect_if_not_logged_in
    @stores = Store.all
    erb :'stores/index'
  end

  get "/stores/new" do
    redirect_if_not_logged_in
    erb :'stores/new'
  end

  post "/stores" do
    Store.create(name: params[:store_name])
    redirect "/stores/#{@store.id}"
  end

  get "/stores/:id/edit" do
    redirect_if_not_logged_in
    @store = Store.find(params[:id])
    erb :'stores/edit'
  end

  post "/stores/:id" do
    redirect_if_not_logged_in
    @store = Store.find(params[:id])
    @store.update(params[:name])
    redirect "/stores/#{@store.id}"
  end

  get "/stores/:id" do
    redirect_if_not_logged_in
    @store = Store.find(params[:id])
    erb :'stores/show'
  end

end
