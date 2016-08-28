class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.attributes = use_params
    if @user.save
      redirect_to login_path, notice: "注册成功，请登录"
    else
      flash[:error] = "用户信息填写有误"
      render :new
    end
  end

  private
  def use_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
