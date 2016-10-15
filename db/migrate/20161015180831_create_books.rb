class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string      :title
      t.string      :description
      t.string      :isbn
      t.string      :cover
      t.integer     :copies
      t.references  :book_type, index: true
      t.timestamps
    end
  end
end
