class BookController < ApplicationController

  before_action :verify_user, except:[:list_all]

  def list_all
    @books = Book.includes(:book_type).all
  end

  def new
    @book = Book.new
  end

  def modify_book
    @book = Book.find_by(id: params[:id])
  end

  def create_book
    @book = Book.new(get_params)
    if @book.save
      redirect_to list_all_book_path
    else
      redirect_to new_path
    end
  end

  def update_book
    @book = find_by(id: params[:id])
    if @book.update(get_params)
      redirect_to list_all_book_path
    else
      redirect_to modify_book_path(@book.id)
    end
  end

  def delete_book
    @book = find_by(id: params[:id])
    @book.delete
    redirect_to list_all_book_path
  end

  private

  def get_params
    params.require(:book).permit(:title,
                                 :description,
                                 :isbn,
                                 :copies,
                                 :book_type_id,
                                 :cover)
  end

end
