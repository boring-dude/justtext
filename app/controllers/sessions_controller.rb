# frozen_string_literal: true

# sessions controller
class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(name: params[:session][:name])
    if user&.authenticate(params[:session][:password])
      create_session(user)
    else
      flash.now[:error] = 'Invalid credentials'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Logged out successfully'
    redirect_to login_path
  end

  private

  def create_session(user)
    session[:user_id] = user.id
    flash[:success] = 'Logged in successfully'
    redirect_to root_path
  end
end
