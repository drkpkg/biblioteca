class User < ApplicationRecord

  belongs_to :user_type, optional: true
  has_many :loan_histories

  validates_uniqueness_of :code, message: 'data can be unique'
end
