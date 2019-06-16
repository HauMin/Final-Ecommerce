class ProductsController < ApplicationController
  before_action :set_product, :set_smallcategory, only: [:show]
  skip_before_action only: [:show]

  def show
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def set_smallcategory
      @small_category = SmallCategory.all.limit(9)
    end
end
