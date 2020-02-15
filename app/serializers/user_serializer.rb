class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :cash

  has_many :stocks
end
