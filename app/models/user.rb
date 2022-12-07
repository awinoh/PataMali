class User < ApplicationRecord
    has_secure_password
      
    has_many :orders
  
    # has_many :makeups as an admin
    # validates :name, :email, :presence: true
end
