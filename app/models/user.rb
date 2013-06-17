class User < ActiveRecord::Base
  has_many :items

  has_secure_password
  attr_accessible :email, :password, :password_confirmation
  validates_uniqueness_of :email
end
