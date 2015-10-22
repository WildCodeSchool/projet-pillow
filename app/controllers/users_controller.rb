class UsersController < ApplicationController
  before_action :authenticate_user!
  #before_action :set_home, only: [:show, :edit, :update, :destroy]

  def edit 
  	@user = current_user
  end

  def index
  end

  def create
  	if @user.save
      redirect_to user_path
  	else
      render :new
  	end
  end

  def show
    @user = User.find(current_user.id)
  end

  def update
  	@user = current_user.update(user_params)
  	if @user
  		redirect_to user_path(current_user.id)
  	else 
  		render :edit
  	end
	end

	private
	def user_params
		params.require(:user).permit(:name, :surname, :date_birth, :gender, :phone, :adress, :zip_code, :town, :description, :langage, :photos)
  end

end