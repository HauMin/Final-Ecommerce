class ProductsController < ApplicationController
  before_action :load_product, except: [:new, :index, :create]
  def index
    @products = Product.all
    @small_categories = SmallCategory.all
  end

  def new
    @product = Product.new
    @small_categories = SmallCategory.all
  end

  def edit
    @small_categories = SmallCategory.all
  end

  def create
    @product = Product.new product_params
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def update
    if @product.update_attributes(product_params)
      flash[:success] = t "updated"
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    if @product.destroy
      flash[:success] = t "product_category_deleted"
      redirect_to products_path
    else
      flash[:danger] = t "product_not_found"
      redirect_to products_path
    end
  end

  private

    def product_params
      params.require(:product).permit(:name, :description_sort, :description_long, 
        :image, :color, :size, :price_in, :price_out, :price_sale, 
        :status, :small_category_id)
    end

    def load_product
      @product = Product.find_by id: params[:id] 
      return if @product
      flash[:danger] = t "product_not_found"
      redirect_to root_path
    end
end