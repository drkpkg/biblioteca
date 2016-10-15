class Book < ApplicationRecord

  has_one :book_type
  belongs_to :book_tag

end
