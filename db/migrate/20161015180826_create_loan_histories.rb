class CreateLoanHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :loan_histories do |t|
      t.references  :user_id, index: true
      t.references  :book_id, index: true
      t.timestamps
    end
  end
end
