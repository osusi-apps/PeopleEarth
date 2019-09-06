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
      flash[:notice] = "ユーザー登録が完了しました"
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
      flash[:success] = "ユーザー情報を編集しました"
      redirect_to @user
    else
      render :edit
    end
  end

end
