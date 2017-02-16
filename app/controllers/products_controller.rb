class ProductsController < ApplicationController
  def index
    @products = Product.all
    render '/products/index'
  end

  def show
    @product = Product.find(params['id'])
    render '/products/show'
  end

  def new
    render '/products/new'
  end

  def edit
    @product = Product.find(params['id'])
    render '/products/edit'
  end

  def create
    Product.create(name: params['name'], description: params['description'], pricing: params['pricing'], category: Category.find(params['category_id']))
    redirect_to '/products'
  end

  def update
    Product.find(params['id']).update(name: params['name'], description: params['description'], pricing: params['pricing'], category: Category.find(params['category_id']))
    flash[:notice] = "Post successfully created"
    redirect_to '/products'
  end

  def destroy
    Product.find(params['id']).destroy
    redirect_to '/products'
  end
end
