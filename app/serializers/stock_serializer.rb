class StockSerializer < ActiveModel::Serializer
  attributes :id, :symbol, :shares, :price, :current_price

  belongs_to :user

  def current_price
    # create IEX API client
    client = IEX::Api::Client.new(
      publishable_token: 'Tpk_f60d00f3b3774527b14ddc2510d54b18',
      endpoint: 'https://sandbox.iexapis.com/v1'
      ) 
      
    # query API for each stocks price
    return client.price(self.object.symbol)
  end
end
