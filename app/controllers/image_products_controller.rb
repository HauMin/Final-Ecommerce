class ImageProductsController < ApplicationController
  before_action :load_image_product, except: [:new, :index, :create]
  def index
    @image_products = ImageProduct.all
    @products = Product.all  
  end

  def new
    @image_product = ImageProduct.new
    @products = Product.all   
  end

  def edit  
    @products = Product.all
  end

  def create
    @image_product = ImageProduct.new image_product_params
    if @image_product.save
      redirect_to image_products_path
    else
      render :new
    end
  end

  def update
    if @image_product.update_attributes(image_product_params)
      flash[:success] = t "updated"
      redirect_to image_products_path
    else
      render :edit
    end
  end

  def destroy
    if @image_product.destroy
      flash[:success] = t "image_product_deleted"
      redirect_to image_products_path
    else
      flash[:danger] = t "image_product_not_found"
      redirect_to image_products_path
    end
  end

  private

    def image_product_params
      params.require(:image_product).permit(:image, :product_id)
    end

    def load_image_product
      @image_product = ImageProduct.find_by id: params[:id] 
      return if @image_product
      flash[:danger] = t "image_product_not_found"
      redirect_to root_path
    end
end