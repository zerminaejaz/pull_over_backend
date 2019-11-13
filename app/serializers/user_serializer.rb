class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :picture, :number, :first_name, :last_name, :created_at
  has_many :posts


end
