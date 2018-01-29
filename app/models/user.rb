class User < ApplicationRecord

  has_secure_password

  validates

  has_and_belongs_to_many :orders

end
