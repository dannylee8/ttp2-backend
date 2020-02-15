class StockSerializer < ActiveModel::Serializer
  attributes :id, :symbol, :shares, :price

  belongs_to :user
end
