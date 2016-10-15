class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string      :name
      t.string      :last_name
      t.date        :birthdate
      t.string      :code
      t.references  :user_type_id, index: true
      t.timestamps
    end
  end
end
