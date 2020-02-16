class StockSerializer < ActiveModel::Serializer
  attributes :id, :symbol, :shares, :price, :current_price

  belongs_to :user

  def current_price
    # create IEX API client
    client = IEX::Api::Client.new(
      publishable_token: 'pk_9b7b0939edbc416e8ecee6a94c193697',
      endpoint: 'https://cloud.iexapis.com/v1'
      ) 
      
      quote = client.quote(self.object.symbol)
    # query API for each stocks price
    return quote.latest_price
  end
end
