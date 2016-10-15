class BookTag < ApplicationRecord

  has_one :book
  has_one :tag

end
