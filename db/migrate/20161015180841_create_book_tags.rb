class CreateBookTags < ActiveRecord::Migration[5.0]
  def change
    create_table :book_tags do |t|
      t.references   :book, index: true
      t.references   :tag, index: true
      t.timestamps
    end
  end
end
