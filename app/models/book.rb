class Book < ApplicationRecord
  dragonfly_accessor :cover

  belongs_to :book_type, optional: true
  belongs_to :book_tag, optional: true
  has_many :Loan_histories

  validates_uniqueness_of :isbn, message: 'data must be is unique'

end
