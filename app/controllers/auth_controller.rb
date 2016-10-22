require 'digest'

class AuthController < ApplicationController
  def login
    @user = User.find_by(code: params[:login][:code])
    md5 = Digest::MD5.new
    md5.update params[:login][:password]

    if @user.password == md5.to_s
      redirect_to list_all_book_path
    else
      redirect_to root_path
    end
  end

  def logout

  end

end
