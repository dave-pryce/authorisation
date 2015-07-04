class SessionsController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
  @user = User.find_by_email(params[:session][:email])
  if @user && @user.authenticate(params[:session][:password])
    session[:user_id] = @user.id
    redirect_to '/'
  else
    redirect_to 'login'
  end
end

end
