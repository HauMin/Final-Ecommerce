class OrdersController < ApplicationController
  before_action :load_order, except: [:new, :index, :create]
  def index
    @orders = Order.all
  end

  def new
    @order = order.new
    @small_categories = SmallCategory.all
  end

  def edit
    
  end

  def create
    @order = order.new order_params
    if @order.save
      redirect_to orders_path
    else
      render :new
    end
  end

  def update
    if @order.update_attributes(order_params)
      flash[:success] = t "updated"
      redirect_to orders_path
    else
      render :edit
    end
  end

  def destroy
    if @order.destroy
      flash[:success] = t "order_category_deleted"
      redirect_to orders_path
    else
      flash[:danger] = t "order_not_found"
      redirect_to orders_path
    end
  end

  private

    def order_params
      params.require(:order).permit(:date_order, :address, :note, 
        :status, :user_id)
    end

    def load_order
      @order = Order.find_by id: params[:id] 
      return if @order
      flash[:danger] = t "order_not_found"
      redirect_to root_path
    end

end
