class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def verify_user
    if session[:current_user_type] == 1
       render inline: "Denied <a href='/student/books'>Go back</a>"
    end
  end

  private

  def current_user
    @_current_user ||= session[:current_user_id] && User.find_by(id: session[:current_user_id])
  end
end
