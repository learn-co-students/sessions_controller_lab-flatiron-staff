class SessionsController < ApplicationController
  def new
  end

  def create
    user = params[:name]
    if user.nil? || user.empty?
      redirect_to login_path
    elsif user
      session[:name] = user
      redirect_to '/'
    end
  end

  def destroy
      session.clear
  end
end
