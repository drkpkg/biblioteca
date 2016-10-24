Rails.application.routes.draw do

  root 'page#index'

  scope 'session' do
    post 'signing' => 'auth#login', as: :auth_session
    post 'signout' => 'auth#logout', as: :delete_session
  end

  scope 'student' do
    get 'books' => 'book#list_all' #Lista de libros
    get 'history' => 'loan_history#list_all' #historial de prestamos
    #post 'borrow' => 'book#borrow'
  end

  scope 'user_type' do
    get 'list_all'                => 'user_type#list_all'
    get 'new_user_type'           => 'user_type#new_user_type'
    get 'modify_user_type/:id'    => 'user_type#modify_user_type', as: :modify_user_type
    post 'create_user_type'       => 'user_type#create_user_type'
    patch 'update_user_type/:id'  => 'user#update_user_type', as: :update_user_type
    delete 'delete_user_type/:id' => 'user_type#delete_user_type', as: :delete_user_type
  end

  scope 'user' do
    get 'list_all'            => 'user#list_all'
    get 'new_user'            => 'user#new'
    get 'modify_user/:id'     => 'user#modify'
    post 'create_user'        => 'user#create_user'
    patch 'update_user/:id'   => 'user#update_user', as: :update_user
    delete 'delete_user/:id'  => 'user#delete_user', as: :delete_user
    post 'block_user'         => 'user#block_user'
  end

  scope 'loan_history' do
    get 'list_all'            => 'loan_history#list_all', as: :loan_history_list_all
    post 'create_lhistory'    => 'loan_history#create_lhistory'
  end

  scope 'book' do
    get 'list_all'            => 'book#list_all',     as: :list_all_book
    get 'new'                 => 'book#new'
    get 'modify_book/:id'     => 'book#modify',       as: :modify_book
    post 'create_book'        => 'book#create_book'
    patch 'update_book/:id'   => 'book#update_book',  as: :update_book
    delete 'delete_book/:id'  => 'book#delete_book',  as: :delete_book
  end

  scope 'book_tag' do
    get 'list_all'                => 'book#list_all'
    post 'create_book_tag'        => 'book#create_book_tag'
    delete 'delete_book_tag/:id'  => 'book#delete_book_tag', as: :delete_book_tag
  end

  scope 'tag' do
    get 'list_all'            => 'tag#list_all'
    get 'new'                 => 'tag#new'
    get 'modify_tag/:id'      => 'tag#modify',     as: :modify_tag
    post 'create_tag'         => 'tag#create_tag'
    patch 'update_tag/:id'    => 'tag#update_tag', as: :update_tag
    delete 'delete_tag/:id'   => 'tag#delete_tag', as: :delete_tag
  end

  scope 'book_type' do
    get 'list_all'                => 'book_type#list_all'
    get 'new'                     => 'book_type#new'
    get 'modify_book_type/:id'    => 'book_type#modify',      as: :modify_book_type
    post 'create_book_type'       => 'book_type#create_book'
    patch 'update_book_type/:id'  => 'book_type#update_book', as: :update_book_type
    delete 'delete_book_type/:id' => 'book_type#delete_book', as: :delete_book_type
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
