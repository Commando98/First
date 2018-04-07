class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    user = user.find_by(name: params [:name])
    if user && user.authenticate(params[:password])
      sessions[:user_id] = user.id
      redirect_to admin_url
    else redirect_to login_url , alert: "invalid user name or password "
    end

  def destroy
    sessions[:user_id]= nil
    redirect_to login_url, alert: "successfully logged out"

  end
end
