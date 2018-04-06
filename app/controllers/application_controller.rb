class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :check_token
  protected
    def check_token
      unless session[:token]
        session[:original_url] = request.url
        redirect_to :controller => :logins, :action => :new
      end
    end
  end
