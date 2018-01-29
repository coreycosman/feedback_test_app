class User < ApplicationRecord

  has_secure_password
  has_and_belongs_to_many :orders

  validates :email, uniqueness: true
  validates :password, length: {minimum: 8}, on: :create
  validates :password, confirmation: true, on: :create
  validates :password, presence: true, on: :create


end
