class User < ApplicationRecord
    has_secure_password
    validates :username, :number, uniqueness: true
    validates :username, :picture, :number, :first_name, :last_name, optional: false
    has_many :posts, dependent: :destroy 
end
