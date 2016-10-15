class CreateLoanHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :loan_histories do |t|
      t.references  :user, index: true
      t.references  :book, index: true
      t.timestamps
    end
  end
end
