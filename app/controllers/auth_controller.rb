require 'digest'

class AuthController < ApplicationController

  def login
    begin
      @user = User.find_by(code: params[:login][:code])
      md5 = Digest::MD5.new
      md5.update params[:login][:password]
      if @user.password == md5.to_s
        session[:current_user_id] = @user.id
        session[:current_user_type] = @user.user_type_id
        # cookies.signed[:session] = {user: @user.id, expires: 1.hour.from_now}
        if @user.user_type_id == 1
          redirect_to books_url
        else
          redirect_to list_all_book_url
        end
      else
        redirect_to root_url
      end
    rescue
      redirect_to root_url
    end
  end

  def logout
    @_current_user = session[:current_user_id] = nil
    redirect_to root_url
  end

end
