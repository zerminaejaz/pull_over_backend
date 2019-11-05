class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :picture, :number
end
