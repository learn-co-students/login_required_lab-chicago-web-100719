class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if !params[:name] || params[:name].empty?
      redirect_to login_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session.delete(:name)
    redirect_to login_path
  end
end
