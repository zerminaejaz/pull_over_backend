class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true
    validates :picture, :number, :location, optional: false
    has_many :posts
    
end
