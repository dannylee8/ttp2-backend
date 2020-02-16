class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :cash, :portfolio_cost, :portfolio_current_value

  has_many :stocks

  def portfolio_cost
    total = 0
    self.object.stocks.each do |stock|
      total += stock.price * stock.shares
    end 
    return total
  end 

  def portfolio_current_value
    total = 0
    # create IEX API client
    client = IEX::Api::Client.new(
      publishable_token: 'Tpk_f60d00f3b3774527b14ddc2510d54b18',
      endpoint: 'https://sandbox.iexapis.com/v1'
      ) 
    
      
    self.object.stocks.each do |stock|
      price = client.price(stock.symbol)
      total += price * stock.shares
    end

    return total
    # query API for each stocks price
  end


end
