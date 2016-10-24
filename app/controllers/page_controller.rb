class PageController < ApplicationController
  def index
    if current_user
      redirect_to list_all_book_path
    end
  end
end
