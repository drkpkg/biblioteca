class Book < ApplicationRecord

  belongs_to :book_type, optional: true
  belongs_to :book_tag, optional: true
  has_many :Loan_histories
end
