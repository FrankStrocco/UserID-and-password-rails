class UsersController < ApplicationController
  def register

  end

  def create
    params.require(:username)
    params.require(:password)
    params.permit(:fullname, :streetaddress, :city, :state, :postalcode, :country, :email)

    @user = UserInfo.new(params[:username], params[:password], params[:fullname],params[:streetaddress],params[:city],params[:state],params[:postalcode],params[:country],params[:email])
    session[:user] = @user.to_yaml
    redirect_to '/users/login'
  end

  def login
  end

  def index
  end

  def success
    @user = YAML.load(session[:user])
    if params[:username] == (@user.username) && params[:password] == (@user.password)
      render 'success'
    elsif params[:username] != @user.username || params[:password] != @user.password
      flash[:alert] = "Login failed, please try again"
      redirect_to '/users/login'
    end
  end
end
