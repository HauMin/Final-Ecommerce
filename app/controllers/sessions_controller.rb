class SessionsController < ApplicationController
  before_action  :set_category

  def new; end

  def create
    user = User.find_by email: params[:session][:email].downcase 
    if user&.authenticate params[:session][:password]
        log_in user
        if (user.role == "admin")
        redirect_to admin_path
        else
        redirect_to root_url
        end
    else
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
  private
    def set_category
      @categories = Category.all.limit(3)
    end
end
