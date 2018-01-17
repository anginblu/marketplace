class ProductController < ApplicationController

  get "/products" do
    redirect_if_not_logged_in
    @products = Product.all
    erb :'products/index'
  end

  post "/products/new" do
    @store = Store.find_by(name: params[:store])
    erb :'products/new'
  end

  get "/products/new" do
    redirect_if_not_logged_in
    erb :'products/new'
  end

  post "/products" do
    @product = Product.create(name: params[:product_name], price: params[:price], store_id: params[:store_id])
    redirect "/products/#{@product.id}"
  end

  get "/products/:id/edit" do
    redirect_if_not_logged_in
    @product = Product.find(params[:id])
    erb :'products/edit'
  end

  post "/products/:id" do
    redirect_if_not_logged_in
    @product = Product.find(params[:id])
    unless params[:name].empty?
      @product.update(name: params[:name])
    end
    unless params[:price].empty?
      @product.update(price: params[:price])
    end
    @product.update(store_id: params[:store_id])
    redirect "/products/#{@product.id}"
  end

  get "/products/:id" do
    redirect_if_not_logged_in
    @product = Product.find(params[:id])
    erb :'products/show'
  end

end
