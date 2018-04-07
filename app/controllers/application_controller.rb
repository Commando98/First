class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorize

protected
  def authorize
    unless User.find_by(:id sessions[:user_id])
      redirect_to login_url, notice: "you trying to access without perimit?"
    end
  end
end
