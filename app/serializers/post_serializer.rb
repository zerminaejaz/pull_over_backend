class PostSerializer < ActiveModel::Serializer
  attributes :id, :price, :description, :case, :car, :status, :longitude, :latitude
  belongs_to :user, only: [:username, :picture, :number]

end
