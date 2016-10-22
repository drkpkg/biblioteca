class User < ApplicationRecord

  belongs_to :user_type, optional: true
  has_many :loan_histories
end
