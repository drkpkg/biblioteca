class LoanHistory < ApplicationRecord

  has_one :user
  has_one :book

end
