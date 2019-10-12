class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find_by(id: params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(name: params[:name], email: params[:email])
    if @user.save
      flash[:notice] = "台風が来ました"
      redirect_to @user
    else
      render :new
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    if @user.update(user_params)
      flash[:success] = "大雨が降っています"
      redirect_to @user
    else
      render :edit
    end
  end

end
