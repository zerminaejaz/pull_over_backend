class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :picture, :number
  has_many :posts


end
