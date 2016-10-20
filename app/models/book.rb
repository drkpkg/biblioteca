class Book < ApplicationRecord

  has_one :book_type
  belongs_to :book_tag
  has_many :Loan_histories
end
