class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :cash, :portfolio_value

  has_many :stocks

  def portfolio_value
    total = 0
    self.object.stocks.map do |stock|
      total += stock.price * stock.shares
    end 
    return total
  end 

end
