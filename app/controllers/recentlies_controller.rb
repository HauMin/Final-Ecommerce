class RecentliesController < ApplicationController
  before_action :load_viewed_product, only: :create

  def create
    recently = current_user.recentlies.new recently_params
    respond_to do |format|
      format.html{redirect_to @product}
      format.js
    end if recently.save
  end
  private

    def recently_params
      params.require(:recently).permit(:product_id)
    end

    def load_viewed_product
      return @product = Product.find_by(id: recently_params[:product_id])
      flash[:danger] = t "product_not_found"
      redirect_to product_path
    end
end
