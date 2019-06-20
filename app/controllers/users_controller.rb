class UsersController < ApplicationController
  before_action :set_cart, :set_category
  before_action :load_user, except: [:new, :index, :create]
  def show
    @user = User.find_by id: params[:id]
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = t "updated"
      if (current_user.role == "admin")
        redirect_to users_path
        else
        redirect_to current_user
      end
    else
      render :edit
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = t("welcome")
      redirect_to root_url
    else
      render :new
    end
  end


  def destroy
    if @user.destroy
      flash[:success] = t "user_deleted"
      redirect_to users_path
    else
      flash[:danger] = t "user_not_found"
      redirect_to users_path
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :phone, :address,
       :password, :password_confirmation, :role)
    end

    def load_user
      @user = User.find_by id: params[:id] 
      return if @user

      flash[:danger] = t "user_not_found"
      redirect_to root_path
    end

    def set_cart
      if logged_in?
        @carts = Cart.where(user_id: current_user.id)
      end
    end

    def set_category
      @categories = Category.all.limit(3)
    end
  
end
