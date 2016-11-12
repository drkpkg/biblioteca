class UserTypeController < ApplicationController

  before_action :verify_user

  def new_user_type
    @user_type = UserType.new
  end

  def modify_user_type
    @user_type = UserType.find_by(id: params[:id])
  end

  def create_user_type
    @user_type = UserType.new(get_params)
    if @user_type.save
      redirect_to list_all_path
    else
      redirect_to new_user_type_path
    end
  end

  def update_user_type
    begin
      @user_type = UserType.find_by(id: params[:id])
      @user_type.update(get_params)
      redirect_to list_all_path
    rescue
      redirect_to modify_user_type_path
    end
  end

  def delete_user_type
    @usertype = UserType.find_by(id: params[:id]) # SELECT * FROM usertype WHERE id={:id}
    @usertype.delete
    redirect_to list_all_path
  end

  def list_all
    @user_types = UserType.all # SELECT * FROM usertype
  end

  private

  def get_params
    params.require(:user_type).permit(:description)
  end

end
