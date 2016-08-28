class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      login_as user
      flash[:notice] = "登录成功"
      redirect_to todos_path
    else
      flash[:error]
      render :new
    end
  end

  def destroy
  end
end
