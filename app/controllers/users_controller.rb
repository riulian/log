class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
  end

  def show
  @user = User.find params[:users]
  end

  def new
  end

  def edit
    @user = User.find(params[:users])
    @@a = @user.id
   #User.find 10
  end

  def create
     @user = User.create(params.require(:user).permit(:nume, :email))
  end

  def update
          @user = User.update(@@a,params.require(:user).permit(:nume, :email))
 end

  def destroy
    @user = User.find(params[:users])
    @user.destroy
    redirect_to action: 'index'
   end
end
