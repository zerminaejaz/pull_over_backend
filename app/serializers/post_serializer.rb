class PostSerializer < ActiveModel::Serializer
  attributes :id, :price, :description, :case, :status, :longitude, :latitude, :created_at
  belongs_to :user, only: [:username, :picture, :number]

end
