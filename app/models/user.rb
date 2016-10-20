class User < ApplicationRecord

  belongs_to :user_type
  has_many :loan_histories
end
