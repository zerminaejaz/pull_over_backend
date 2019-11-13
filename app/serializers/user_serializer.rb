class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :picture, :number, :created_at
  has_many :posts


end
