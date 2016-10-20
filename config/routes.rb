Rails.application.routes.draw do

  scope 'user_type' do
    get 'list_all'            => 'user_type#list_all'
    get 'new_user_type'       => 'user_type#new_user_type'
    get 'modify_user_type/:id'       => 'user_type#modify_user_type', as: :modify_user_type
    post 'create_user_type'   => 'user_type#create_user_type'
    patch 'update_user_type/:id'  => 'user#update_user_type', as: :update_user_type
    delete 'delete_user_type/:id' => 'user_type#delete_user_type', as: :delete_user_type
  end

  scope 'user' do
    get 'list_all'        => 'user#list_all'
    post 'create_user'    => 'user#create_user'
    patch 'update_user'   => 'user#update_user'
    delete 'delete_user'  => 'user#delete_user'
    post 'block_user'     => 'user#block_user'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
