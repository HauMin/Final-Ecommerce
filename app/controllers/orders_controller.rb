class OrdersController < ApplicationController
  before_action :set_cart
  def index
  end

  def show
  end

  def create
  end

  private
    def set_cart
      if logged_in?
        @carts = Cart.where(user_id: current_user.id)
      end
    end
end
